from kinto_http import Client
import json
import os

username = os.environ['KINTO_USER']
password = os.environ['KINTO_PASSWORD']
server_url = os.environ['KINTO_URL']
map_id = os.environ['MAP_ID']


# pull the files from kinto and format the fields

def getmap(collection_id):
    auth = (username, password)
    client = Client(server_url=server_url, auth=auth)
    try:
        records = client.get_records(bucket='formdata', collection=collection_id)
    except:
        return f'There was a problen getting the information from kinto'
    for record in records:
        label = record['label']
        print(f'Processing JSON file for: {label}')
        record['element type'] = "Project"
        tagline = record['tag line']
        description1 = record['Description1']
        description2 = record['Description2']
        video = record['video src']
        markdown = f'#{tagline}\n## About {label}\n![About {label}({video})\n### {description1}\n{description2}"'
        record['description'] = markdown

        stack_list = []
        if 'Stack' in record:
            if isinstance(record['Stack'], (list,)):
                for value in record['Stack']:
                    stack_list.append(remove_parens(value))
            else:
                stack_list.append(remove_parens(record['Stack']))

            record['Stack'] = stack_list

        network_list = []
        if 'Network Topology' in record:
            if isinstance(record['Network Topology'], (list,)):
                for value in record['Network Topology']:
                    network_list.append(remove_parens(value))
            else:
                network_list.append(remove_parens(record['Network Topology']))
            record['Network Topology'] = network_list

        # remove contact and email for privacy
        del record['contact email']
        del record['map contact']

        # write out the files
        with open(f'projects/{label}.json', 'w') as outfile:
            json.dump(record, outfile)

    return "All files processed"


def remove_parens(text_string):
    return text_string.split("(", maxsplit=1)[0].strip()


a = getmap(map_id)

print(a)
