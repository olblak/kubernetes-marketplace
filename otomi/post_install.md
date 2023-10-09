## Otomi

Otomi is a self-hosted PaaS for Kubernetes and adds developer- and operations-centric tools, automation, and self-service on top of Kubernetes in any infrastructure or cloud, to code, build, and run containerized applications.

## Minimal requirements

Otomi requires at least:

Check the minimal requirements for running Otomi on Civo [here].(https://otomi.io/docs/get-started/prerequisites#civo)

## Access and activation

Follow the steps described [here](https://otomi.io/docs/get-started/activation) after initial installation.

## Switch from nip.io to Civo DNS

When Otomi is installed using the Civo marketplace, Otomi will use a generated (untrusted) CA and use the ip address of the load balancer with nip.io for all the host names. To see the full potential of Otomi, it is advised to switch to using a DNS zone. Follow the instructions to switch to using Civo DNS.

In Civo:

* Under `Networking` in the Civo Dashboard, click `DNS` and then `Add a domain name`
* Fill in a domain name and then click `Add domain`
* Create a NS record in the zone where your domain is hosted and add the Civo name servers `ns0.civo.com` ans `ns1.civo.com`
* Under `Settings`, `Profile`, click on the tab `Security` and copy the `API key`

In Otomi:

Follow the instructions [here](https://otomi.io/docs/for-ops/how-to/switch-to-dns).

## Install Otomi on Civo with Civo DNS

Follow the instructions described [here](https://otomi.io/docs/for-ops/how-to/install-with-dns#civo-dns) to install Otomi on Civo using Civo DNS.

## Known issues on Civo

* During initial installation the job `job-keycloak` in the `maintenance` namespace might fail and go into an `error` status. The job will automatically retry and (after 1 or 2 retries) eventually succeed. Make sure to comply to the minimal requirements to avoid this issue.

## Next steps

* Read the [documentation](https://otomi.io)
* Join our [Slack channel](https://join.slack.com/t/otomi/shared_invite/zt-1axa4vima-E~LHN36nbLR~ay5r5pGq9A)
* Get involved on [GitHub](https://github.com/redkubes/otomi-core)
