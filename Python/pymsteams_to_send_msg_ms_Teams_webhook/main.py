# ===> This is the First method <===
#====================================

# import pymsteams
# myTeamsMessage = pymsteams.connectorcard("https://mobily.webhook.office.com/webhookb2/f0c59173-30af-4b48-9487-5be11aa6e8df@111483dd-9e03-417d-bd28-5866c2dddaa5/IncomingWebhook/c958591ec6244331b6c6124a5be6846d/41c441c8-3da4-4088-9be0-e04d49afa76c")
# myTeamsMessage.text("this is my text")
# myTeamsMessage.send()



# ===> This is the second method <===
#====================================

# import requests
# import json

# url = "https://mobily.webhook.office.com/webhookb2/f0c59173-30af-4b48-9487-5be11aa6e8df@111483dd-9e03-417d-bd28-5866c2dddaa5/IncomingWebhook/c958591ec6244331b6c6124a5be6846d/41c441c8-3da4-4088-9be0-e04d49afa76c"
# payload = {
#     "text": "Sample alert text"
# }
# headers = {
#     'Content-Type': 'application/json'
# }
# response = requests.post(url, headers=headers, data=json.dumps(payload))
# print(response.text.encode('utf8'))

# pip install pymsteams
# pip install atlassian-python-api

# in bmaboo to run python scripts,
#  Make sure to add the traditional #!/usr/bin/python shebang (or equivalent path) to each script.