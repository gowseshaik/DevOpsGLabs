# -*- coding: utf-8 -*-
#VERSION: 2.0
#AUTHORS: Joost Bremmer (toost.b@gmail.com)
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <https://www.gnu.org/licenses/>.


try:
    from html.parser import HTMLParser
except ImportError:
    from HTMLParser import HTMLParser

# import qBT modules
try:
    from novaprinter import prettyPrinter
    from helpers import retrieve_url
except ImportError:
    pass
    

class skytorrents(object):
    """Class used by qBittorrent to search for torrents"""

    url = 'https://www.skytorrents.lol/'
    name = 'Sky Torrents LOL'
    # defines which search categories are supported by this search engine
    # and their corresponding id. Possible categories are:
    # 'all', 'movies', 'tv', 'music', 'games', 'anime', 'software', 'pictures',
    # 'books'
    supported_categories = {'all': 'all'}

    class SkySearchParser(HTMLParser):
        """ Parses Template browse page for search results and prints them"""
        def __init__(self, results, url):
            self._url = url
            try:
                super().__init__()
            except:
                # See: http://stackoverflow.com/questions/9698614/
                HTMLParser.__init__(self)
            self.results = results
            self.engine_url = url
            self.curr = None
            self.catch_name = False
            self.td_counter = 0

        def handle_starttag(self, tag, attr):
            if tag == 'a':
                self.handle_a(attr)

        def handle_endtag(self, tag):
            if tag == 'td':
                self.handle_td()

        def handle_a(self, attr):
            attr = dict(attr)
            if 'href' in attr:
                if 'info/' in attr['href']:
                    res = {'desc_link': urljoin(self.engine_url, attr['href']),
                           'engine_url': self.engine_url}
                    self.catch_name = True
                    self.curr = self.curr or res
                elif attr['href'].startswith('magnet:'):
                    self.curr['link'] = attr['href']

        def handle_td(self):
            self.td_counter += 1

            # we've caught all info, add it to the results
            # then reset the counters for the next result
            if self.td_counter > 5:
                if self.curr['seeds'] or self.curr['leech']:  # filter noise
                    self.results.append(self.curr)
                self.curr = None
                self.td_counter = 0

        def handle_data(self, data):
            if self.catch_name:
                self.curr['name'] = data.strip()
                self.catch_name = False
            elif self.td_counter == 1:
                self.curr['size'] = data.strip()
            elif self.td_counter == 4:
                try:
                    self.curr['seeds'] = int(data.strip())
                except ValueError:
                    self.curr['seeds'] = -1
            elif self.td_counter == 5:
                try:
                    self.curr['leech'] = int(data.strip())
                except ValueError:
                    self.curr['leech'] = -1

    # DO NOT CHANGE the name and parameters of this function
    # This function will be the one called by nova2.py
    def search(self, what, cat='all'):
        """
        Retreive and parse engine search results by category and query.

        Parameters:
        :param what: a string with the search tokens, already escaped
                     (e.g. "Ubuntu+Linux")
        :param cat:  the name of a search category, see supported_categories.
        """

        results = []
        page = 1
        parser = self.SkySearchParser(results, self.url)
        while True:
            url = str(
                "{site}?query={query}&page={page}"
                .format(site=self.url,
                        page=page,
                        query=what))
            res = retrieve_url(url)
            parser.feed(res)
            if not results:
                break
            for each in results:
                prettyPrinter(each)

            del results[:]
            page += 1

        parser.close()


if __name__ == '__main__':
    skytorrents().search('red+alert')