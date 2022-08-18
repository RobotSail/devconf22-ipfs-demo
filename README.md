<h1 align="center">DevConf 2022 IPFS Demo</h1>
<h3 align="center">By <a href="https://github.com/robotsail">@RobotSail</a></h3>

<p align="center">
	This repository features a few demos and assets which
	were used in the 2022 DevConf presentation
	<i>"IPFS: What is it, and why should I care?"</i>
</p>

<hr>

<h2 align="center">Corgi Example</h2>
<p align="center">
	<img src="./photos/corgi.png" height="200px" width="200px">
</p>
<p align="center">
<code>QmbxJYrgzW27WUVd17iqTtomhRrCCf997QeKhjfiEU14bx</code>
</p>

<hr>

<h2>Demo Outline</h2>

<h3>Website de-duplication</h3>

1. Run the explore IPLD application.
1. Build the website in the [ipfs-webapp-demo](./ipfs-webapp-demo/) directory.
1. Upload the built website into IPFS and show that it is accessible at `https://ipfs.io/ipfs/<cid>`
1. Change the contents of the website and re-upload to IPFS.
1. Note the differences in files by inspecting the two CIDs via `explore.ipld.io`.


<h3>Content reproviding</h3>

This demo showcases bitswap's impact in providing content back to the network as it downloads.

> This demo takes a bit of trial and error before the other node appears as a provider.

1. Upload a piece of content `x` to IPFS from `ipfs-node-1`.
1. Have another `ipfs-node-2` download `x`.
1. Shut the `ipfs-node-1` EC2 instance down.
1. Find the providers of `x`.
1. Show that we can still download `x` on our host machine.

<h3>IPNS Website Resolution</h3>

The goal of this demo is to showcase how IPNS can be used
in order to resolve and update a website.

1. Build the website in the [ipfs-webapp-demo](./ipfs-webapp-demo/) directory using `npm run build-ipfs`.
1. Show that the website can be located at `https://ipfs.io/ipfs/<cid>`
1. Publish that website to IPNS using `ipfs name publish $CID`
1. Make a change to the website by checking out the `with-ipfs` branch of this repo
1. Build and re-publish the website to IPNS by running `npm run build-ipns`
1. Refresh the page and show that the website has been updated while maintaining the same IPNS name.

<h3>IPFS pubsub demo</h3>

> At the time of writing, pubsub remains an experimental feature which is not enabled in kubo by default.

1. SSH into `ipfs-node-1` and `ipfs-node-2`.
1. Have `ipfs-node-1` and `ipfs-node-2` both run `ipfs pubsub sub devconf-boston-2022`.
1. From the host machine, run `echo "[${USER}@${HOST}] $(date '+%X') <message>"`
1. View the results in `ipfs-node-1` and `ipfs-node-2`.
