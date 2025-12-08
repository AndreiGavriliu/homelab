#!/usr/bin/env python3

from vaultwarden.clients.bitwarden import BitwardenAPIClient
from vaultwarden.models.bitwarden import Organization, OrganizationCollection, get_organization

bitwarden_client = BitwardenAPIClient(url="https://vault.gavriliu.com", email="andrei@gavriliu.com", password="P3ntdr1g0n7wiuCHle!", client_id="client_id", client_secret="client_secret", device_id="device_id")

# org_uuid = "550e8400-e29b-41d4-a716-446655440000"

# orga= get_organization(bitwarden_client, org_uuid)

# collection_id_list = ["666e8400-e29b-41d4-a716-446655440000", "888e8400-e29b-41d4-a716-446655440000", "770e8400-e29b-41d4-a716-446655440000" ]
# orga.invite(email="new@example.com", collections=collection_id_list, default_readonly=True, default_hide_passwords=True)
# org_users = orga.users()
# org_collections: list[OrganizationCollection] = orga.collections()
# org_collections_by_name: dict[str: OrganizationCollection] = orga.collections(as_dict=True)
# new_coll = orga.create_collection("new_collection")
# orga.delete_collection(new_coll.Id)

# my_coll = orga.collection("my_collection")
# if new_coll:
#     users_coll = my_coll.users()

# my_coll_2 = org_collections_by_name["my_coll_2"]

# my_user = orga.users(search="john.doe@example.com")
# if my_user:
#     my_user = my_user[0]
#     print(my_user.Collections)
#     my_user.add_collections([my_coll_2.Id])