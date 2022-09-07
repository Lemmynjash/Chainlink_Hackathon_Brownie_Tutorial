from brownie import ApprovalContract, accounts


def main():
    account = accounts[0]
    approval_contract = ApprovalContract.deploy(account, {"from": account})

    print(approval_contract)
