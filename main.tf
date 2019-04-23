provider "azurerm" {
	client_id="5292526b-0a45-4b94-b1ac-77a893c84b7a"
	client_secret="680d4d7c-f99d-4daa-a246-573559134f22"
	subscription_id="999f6df5-8724-4d93-9ffe-e8a8bff727a0"
	tenant_id="e06c8fea-edfd-499a-957a-7c2186cf7c22"
}

resource "azurerm_resource_group" "mynewrecgrp456" {
	name="testing"
	location="West US"
}
