# ublue-image
A familiar(ish) Ubuntu desktop for Fedora Silverblue 

This is a containerized version of [ublue](https://ublue.it) utilizing the latest image based features in ostree.
Since all this stuff is new it's barebones right now, ymmv, it might kick your dog, etc.

WARNING: This is experimental and not tested that much, but my goal is to provide the experience I want with as much automation as possible.

> "Let's see what's out there." - Jean-Luc Picard

# Usage

    sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/castrojo/ublue-image:latest
