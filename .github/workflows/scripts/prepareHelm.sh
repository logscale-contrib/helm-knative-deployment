#!/usr/bin/env bash
#
yq -i ".version = \"${1}\" " chart/Chart.yaml
helm dependency update chart
helm dependency build chart
helm package chart