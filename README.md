# certbot-wedosWAPI

scripts for certbot with Wedos WAPI 

## Getting Started

Clone repo

```
git clone git@github.com:rvallo/certbot-wedosWAPI.git
```

Copy and edit

```
cp credentials.sh.example credentials.sh
vim credentials.sh
``` 

Create DNS record for LE
```
./create_DNS_records.sh
```

Get your ID from Wedos WAPI and save ID to credentials.sh

```
./listLE_DNS_records.sh
```

Get your wildcard certificate from letsencrypt! 

```
certbot -d *.example.com --manual --manual-auth-hook ./update_DNS_records.sh --preferred-challenges dns certonly --server https://acme-v02.api.letsencrypt.org/directory
``` 

### Prerequisites

Install [certbot](https://certbot.eff.org/)


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

