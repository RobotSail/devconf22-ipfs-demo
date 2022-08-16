<h1 align="center">DevConf 2022 IPFS Demo</h1>
<h3 align="center">By <a href="https://github.com/robotsail">@RobotSail</a></h3>

<p align="center">
	This repository features a few demos and assets which
	were used in the 2022 DevConf presentation
	<i>"IPFS: What is it, and why should I care?"</i>
</p>

<hr>

<h2>Demo Outline</h2>

<h3>Website de-duplication</h3>

1. Build the website in the [ipfs-demo](./ipfs-demo/) directory.
1. Upload the built website into IPFS and show that it is accessible at `https://ipfs.io/ipfs/<cid>`
1. Change the contents of the website and re-upload to IPFS.
1. Note the differences in files by inspecting the two CIDs via `explore.ipld.io`.


<h3>Content reproviding</h3>

1. Upload a piece of content `x` to IPFS from `ipfs-node-1`.
1. Have another `ipfs-node-2` download `x`.
1. Shut the `ipfs-node-1` EC2 instance down.
1. Find the providers of `x`
1. Show that we can still download `x` on our host machine.

