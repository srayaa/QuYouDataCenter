<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html class="ng-scope" lang="en" data-ng-app="app">
<head>
<style class="ng-binding" type="text/css">
md-bottom-sheet.md-list md-list-item {
	color: rgba(0, 0, 0, 0.87);
}

md-bottom-sheet .md-subheader {
	color: rgba(0, 0, 0, 0.87);
}

md-card .md-card-image {
	border-radius: 2px 2px 0 0;
}

md-checkbox .md-icon {
	border-color: rgba(0, 0, 0, 0.54);
}

md-checkbox:not ([disabled] ).md-primary .md-ripple {
	color: rgb(57, 73, 171);
}

md-checkbox:not ([disabled] ).md-primary.md-checked .md-ripple {
	color: rgb(117, 117, 117);
}

md-checkbox:not ([disabled] ).md-primary .md-icon {
	border-color: rgba(0, 0, 0, 0.54);
}

md-checkbox:not ([disabled] ).md-primary.md-checked .md-icon {
	background-color: rgba(63, 81, 181, 0.87);
}

md-checkbox:not ([disabled] ).md-primary.md-checked.md-focused .md-container:before
	{
	background-color: rgba(63, 81, 181, 0.26);
}

md-checkbox:not ([disabled] ).md-primary.md-checked .md-icon:after {
	border-color: rgb(238, 238, 238);
}

md-checkbox[disabled] .md-icon {
	border-color: rgba(0, 0, 0, 0.26);
}

md-checkbox[disabled] .md-label {
	color: rgba(0, 0, 0, 0.26);
}

a.md-button, .md-button {
	border-radius: 3px;
}

a.md-button.md-icon-button, .md-button.md-icon-button {
	border-radius: 50%;
}

a.md-button.md-primary, .md-button.md-primary {
	color: rgb(63, 81, 181);
}

a.md-button.md-primary.md-raised, a.md-button.md-primary.md-fab,
	.md-button.md-primary.md-raised, .md-button.md-primary.md-fab {
	color: rgba(255, 255, 255, 0.87);
	background-color: rgb(63, 81, 181);
}

a.md-button.md-primary.md-raised:not ([disabled] ) md-icon, a.md-button.md-primary.md-fab:not
	([disabled] ) md-icon, .md-button.md-primary.md-raised:not ([disabled]
	) md-icon, .md-button.md-primary.md-fab:not ([disabled] ) md-icon {
	color: rgba(255, 255, 255, 0.87);
}

a.md-button.md-primary.md-raised:not ([disabled] ):hover, a.md-button.md-primary.md-fab:not
	([disabled] ):hover, .md-button.md-primary.md-raised:not ([disabled] ):hover,
	.md-button.md-primary.md-fab:not ([disabled] ):hover {
	background-color: rgb(63, 81, 181);
}

a.md-button.md-primary.md-raised:not ([disabled] ).md-focused, a.md-button.md-primary.md-fab:not
	([disabled] ).md-focused, .md-button.md-primary.md-raised:not ([disabled]
	).md-focused, .md-button.md-primary.md-fab:not ([disabled] ).md-focused
	{
	background-color: rgb(57, 73, 171);
}

a.md-button.md-primary:not ([disabled] ) md-icon, .md-button.md-primary:not
	([disabled] ) md-icon {
	color: rgb(63, 81, 181);
}

md-divider {
	border-top-color: rgba(0, 0, 0, 0.12);
}

md-chips .md-chips.md-focused {
	box-shadow: 0 2px rgb(63, 81, 181);
}

md-chips .md-chip.md-focused {
	background: rgb(63, 81, 181);
	color: rgba(255, 255, 255, 0.87);
}

md-chips .md-chip.md-focused md-icon {
	color: rgba(255, 255, 255, 0.87);
}

md-dialog.md-content-overflow .md-actions {
	border-top-color: rgba(0, 0, 0, 0.12);
}

md-icon {
	color: rgba(0, 0, 0, 0.54);
}

md-icon.md-primary {
	color: rgb(63, 81, 181);
}

md-input-container .md-input {
	color: rgba(0, 0, 0, 0.87);
	border-color: rgba(0, 0, 0, 0.12);
	text-shadow:;
}

md-input-container .md-input::-webkit-input-placeholder,
	md-input-container .md-input::-moz-placeholder, md-input-container .md-input:-moz-placeholder,
	md-input-container .md-input:-ms-input-placeholder {
	color: rgba(0, 0, 0, 0.26);
}

md-input-container>md-icon {
	color: rgba(0, 0, 0, 0.87);
}

md-input-container label, md-input-container .md-placeholder {
	text-shadow:;
	color: rgba(0, 0, 0, 0.26);
}

md-input-container:not (.md-input-invalid ).md-input-has-value label {
	color: rgba(0, 0, 0, 0.54);
}

md-input-container:not (.md-input-invalid ).md-input-focused .md-input {
	border-color: rgb(63, 81, 181);
}

md-input-container:not (.md-input-invalid ).md-input-focused label {
	color: rgb(63, 81, 181);
}

md-input-container:not (.md-input-invalid ).md-input-focused md-icon {
	color: rgb(63, 81, 181);
}

md-list md-list-item.md-2-line .md-list-item-text h3, md-list md-list-item.md-2-line .md-list-item-text h4,
	md-list md-list-item.md-3-line .md-list-item-text h3, md-list md-list-item.md-3-line .md-list-item-text h4
	{
	color: rgba(0, 0, 0, 0.87);
}

md-list md-list-item.md-2-line .md-list-item-text p, md-list md-list-item.md-3-line .md-list-item-text p
	{
	color: rgba(0, 0, 0, 0.54);
}

md-list md-list-item>md-icon {
	color: rgba(0, 0, 0, 0.54);
}

md-list md-list-item>md-icon.md-highlight {
	color: rgb(63, 81, 181);
}

md-progress-circular .md-inner .md-gap {
	border-top-color: rgb(63, 81, 181);
	border-bottom-color: rgb(63, 81, 181);
}

md-progress-circular .md-inner .md-left .md-half-circle,
	md-progress-circular .md-inner .md-right .md-half-circle {
	border-top-color: rgb(63, 81, 181);
}

md-progress-circular .md-inner .md-right .md-half-circle {
	border-right-color: rgb(63, 81, 181);
}

md-progress-circular .md-inner .md-left .md-half-circle {
	border-left-color: rgb(63, 81, 181);
}

md-progress-linear .md-container {
	background-color: rgb(197, 202, 233);
}

md-progress-linear .md-bar {
	background-color: rgb(63, 81, 181);
}

md-radio-button .md-off {
	border-color: rgba(0, 0, 0, 0.54);
}

md-radio-group:not ([disabled] ) .md-primary .md-on, md-radio-group:not
	([disabled] ).md-primary .md-on, md-radio-button:not ([disabled] ) .md-primary .md-on,
	md-radio-button:not ([disabled] ).md-primary .md-on {
	background-color: rgba(63, 81, 181, 0.87);
}

md-radio-group:not ([disabled] ) .md-primary .md-checked .md-off,
	md-radio-group:not ([disabled] ) .md-primary.md-checked .md-off,
	md-radio-group:not ([disabled] ).md-primary .md-checked .md-off,
	md-radio-group:not ([disabled] ).md-primary.md-checked .md-off,
	md-radio-button:not ([disabled] ) .md-primary .md-checked .md-off,
	md-radio-button:not ([disabled] ) .md-primary.md-checked .md-off,
	md-radio-button:not ([disabled] ).md-primary .md-checked .md-off,
	md-radio-button:not ([disabled] ).md-primary.md-checked .md-off {
	border-color: rgba(63, 81, 181, 0.87);
}

md-radio-group:not ([disabled] ) .md-primary .md-checked .md-ink-ripple,
	md-radio-group:not ([disabled] ) .md-primary.md-checked .md-ink-ripple,
	md-radio-group:not ([disabled] ).md-primary .md-checked .md-ink-ripple,
	md-radio-group:not ([disabled] ).md-primary.md-checked .md-ink-ripple,
	md-radio-button:not ([disabled] ) .md-primary .md-checked .md-ink-ripple,
	md-radio-button:not ([disabled] ) .md-primary.md-checked .md-ink-ripple,
	md-radio-button:not ([disabled] ).md-primary .md-checked .md-ink-ripple,
	md-radio-button:not ([disabled] ).md-primary.md-checked .md-ink-ripple
	{
	color: rgba(63, 81, 181, 0.87);
}

md-radio-group:not ([disabled] ) .md-primary .md-container .md-ripple,
	md-radio-group:not ([disabled] ).md-primary .md-container .md-ripple,
	md-radio-button:not ([disabled] ) .md-primary .md-container .md-ripple,
	md-radio-button:not ([disabled] ).md-primary .md-container .md-ripple {
	color: rgb(57, 73, 171);
}

md-radio-group[disabled], md-radio-button[disabled] {
	color: rgba(0, 0, 0, 0.26);
}

md-radio-group[disabled] .md-container .md-off, md-radio-button[disabled] .md-container .md-off
	{
	border-color: rgba(0, 0, 0, 0.26);
}

md-radio-group[disabled] .md-container .md-on, md-radio-button[disabled] .md-container .md-on
	{
	border-color: rgba(0, 0, 0, 0.26);
}

md-radio-group.md-focused:not (:empty ) .md-checked:not ([disabled] ).md-primary .md-container:before
	{
	background-color: rgba(63, 81, 181, 0.26);
}

md-radio-group.md-focused:not (:empty ) .md-checked.md-primary .md-container:before
	{
	background-color: '-0.26';
}

md-select .md-select-value {
	border-bottom-color: rgba(0, 0, 0, 0.12);
}

md-select .md-select-value.md-select-placeholder {
	color: rgba(0, 0, 0, 0.26);
}

md-select:not ([disabled] ):focus .md-select-value {
	border-bottom-color: rgb(63, 81, 181);
	color: rgba(0, 0, 0, 0.87);
}

md-select:not ([disabled] ):focus .md-select-value.md-select-placeholder
	{
	color: rgba(0, 0, 0, 0.87);
}

md-select[disabled] .md-select-value {
	color: rgba(0, 0, 0, 0.26);
}

md-select[disabled] .md-select-value.md-select-placeholder {
	color: rgba(0, 0, 0, 0.26);
}

md-select-menu md-option[disabled] {
	color: rgba(0, 0, 0, 0.26);
}

md-select-menu md-optgroup {
	color: rgba(0, 0, 0, 0.54);
}

md-select-menu md-optgroup md-option {
	color: rgba(0, 0, 0, 0.87);
}

md-select-menu md-option[selected] {
	color: rgb(63, 81, 181);
}

md-select-menu md-option[selected]:focus {
	color: rgb(57, 73, 171);
}

md-slider .md-focus-ring {
	border-color: rgba(0, 0, 0, 0.12);
}

md-slider.md-primary .md-track.md-track-fill {
	background-color: rgb(63, 81, 181);
}

md-slider.md-primary .md-thumb:after {
	border-color: rgb(63, 81, 181);
	background-color: rgb(63, 81, 181);
}

md-slider.md-primary .md-sign {
	background-color: rgb(63, 81, 181);
}

md-slider.md-primary .md-sign:after {
	border-top-color: rgb(63, 81, 181);
}

md-slider.md-primary .md-thumb-text {
	color: rgba(255, 255, 255, 0.87);
}

md-slider[disabled] .md-thumb:after {
	border-color: rgba(0, 0, 0, 0.26);
}

.md-subheader.md-primary {
	color: rgb(63, 81, 181);
}

md-switch.md-checked.md-primary .md-thumb {
	background-color: rgb(63, 81, 181);
}

md-switch.md-checked.md-primary .md-bar {
	background-color: rgba(63, 81, 181, 0.5);
}

md-switch.md-checked.md-primary.md-focused .md-thumb:before {
	background-color: rgba(63, 81, 181, 0.26);
}

md-tabs .md-paginator md-icon {
	color: rgb(63, 81, 181);
}

md-tabs .md-tab {
	color: rgba(0, 0, 0, 0.54);
}

md-tabs .md-tab[disabled] {
	color: rgba(0, 0, 0, 0.26);
}

md-tabs .md-tab.md-active, md-tabs .md-tab.md-focused {
	color: rgb(63, 81, 181);
}

md-tabs .md-tab.md-focused {
	background: rgba(63, 81, 181, 0.1);
}

md-tabs.md-primary>md-tabs-wrapper {
	background-color: rgb(63, 81, 181);
}

md-tabs.md-primary>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ) {
	color: rgb(197, 202, 233);
}

md-tabs.md-primary>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-active, md-tabs.md-primary>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	color: rgba(255, 255, 255, 0.87);
}

md-tabs.md-primary>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	background: rgba(255, 255, 255, 0.1);
}

md-toolbar>md-tabs>md-tabs-wrapper {
	background-color: rgb(63, 81, 181);
}

md-toolbar>md-tabs>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ) {
	color: rgb(197, 202, 233);
}

md-toolbar>md-tabs>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-active, md-toolbar>md-tabs>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	color: rgba(255, 255, 255, 0.87);
}

md-toolbar>md-tabs>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	background: rgba(255, 255, 255, 0.1);
}

md-toast .md-button.md-highlight {
	color: rgb(83, 109, 254);
}

md-toolbar {
	background-color: rgb(63, 81, 181);
	color: rgba(255, 255, 255, 0.87);
}

md-toolbar md-icon {
	color: rgba(255, 255, 255, 0.87);
}

md-toolbar .md-button {
	color: rgba(255, 255, 255, 0.87);
}
</style>
<style class="ng-binding" type="text/css">
md-bottom-sheet.md-hue-1.md-list md-list-item {
	color: rgba(0, 0, 0, 0.87);
}

md-bottom-sheet.md-hue-1 .md-subheader {
	color: rgba(0, 0, 0, 0.87);
}

md-card.md-hue-1 .md-card-image {
	border-radius: 2px 2px 0 0;
}

md-checkbox.md-hue-1 .md-icon {
	border-color: rgba(0, 0, 0, 0.54);
}

md-checkbox.md-hue-1:not ([disabled] ).md-primary .md-ripple {
	color: rgb(57, 73, 171);
}

md-checkbox.md-hue-1:not ([disabled] ).md-primary.md-checked .md-ripple
	{
	color: rgb(117, 117, 117);
}

md-checkbox.md-hue-1:not ([disabled] ).md-primary .md-icon {
	border-color: rgba(0, 0, 0, 0.54);
}

md-checkbox.md-hue-1:not ([disabled] ).md-primary.md-checked .md-icon {
	background-color: rgba(121, 134, 203, 0.87);
}

md-checkbox.md-hue-1:not ([disabled] ).md-primary.md-checked.md-focused .md-container:before
	{
	background-color: rgba(121, 134, 203, 0.26);
}

md-checkbox.md-hue-1:not ([disabled] ).md-primary.md-checked .md-icon:after
	{
	border-color: rgb(238, 238, 238);
}

md-checkbox.md-hue-1[disabled] .md-icon {
	border-color: rgba(0, 0, 0, 0.26);
}

md-checkbox.md-hue-1[disabled] .md-label {
	color: rgba(0, 0, 0, 0.26);
}

a.md-button.md-hue-1, .md-button.md-hue-1 {
	border-radius: 3px;
}

a.md-button.md-hue-1.md-icon-button, .md-button.md-hue-1.md-icon-button
	{
	border-radius: 50%;
}

a.md-button.md-hue-1.md-primary, .md-button.md-hue-1.md-primary {
	color: rgb(121, 134, 203);
}

a.md-button.md-hue-1.md-primary.md-raised, a.md-button.md-hue-1.md-primary.md-fab,
	.md-button.md-hue-1.md-primary.md-raised, .md-button.md-hue-1.md-primary.md-fab
	{
	color: rgb(255, 255, 255);
	background-color: rgb(121, 134, 203);
}

a.md-button.md-hue-1.md-primary.md-raised:not ([disabled] ) md-icon, a.md-button.md-hue-1.md-primary.md-fab:not
	([disabled] ) md-icon, .md-button.md-hue-1.md-primary.md-raised:not ([disabled]
	) md-icon, .md-button.md-hue-1.md-primary.md-fab:not ([disabled] ) md-icon
	{
	color: rgb(255, 255, 255);
}

a.md-button.md-hue-1.md-primary.md-raised:not ([disabled] ):hover, a.md-button.md-hue-1.md-primary.md-fab:not
	([disabled] ):hover, .md-button.md-hue-1.md-primary.md-raised:not ([disabled]
	):hover, .md-button.md-hue-1.md-primary.md-fab:not ([disabled] ):hover
	{
	background-color: rgb(121, 134, 203);
}

a.md-button.md-hue-1.md-primary.md-raised:not ([disabled] ).md-focused,
	a.md-button.md-hue-1.md-primary.md-fab:not ([disabled] ).md-focused,
	.md-button.md-hue-1.md-primary.md-raised:not ([disabled] ).md-focused,
	.md-button.md-hue-1.md-primary.md-fab:not ([disabled] ).md-focused {
	background-color: rgb(57, 73, 171);
}

a.md-button.md-hue-1.md-primary:not ([disabled] ) md-icon, .md-button.md-hue-1.md-primary:not
	([disabled] ) md-icon {
	color: rgb(121, 134, 203);
}

md-divider.md-hue-1 {
	border-top-color: rgba(0, 0, 0, 0.12);
}

md-chips.md-hue-1 .md-chips.md-focused {
	box-shadow: 0 2px rgb(121, 134, 203);
}

md-chips.md-hue-1 .md-chip.md-focused {
	background: rgb(121, 134, 203);
	color: rgb(255, 255, 255);
}

md-chips.md-hue-1 .md-chip.md-focused md-icon {
	color: rgb(255, 255, 255);
}

md-dialog.md-hue-1.md-content-overflow .md-actions {
	border-top-color: rgba(0, 0, 0, 0.12);
}

md-icon.md-hue-1 {
	color: rgba(0, 0, 0, 0.54);
}

md-icon.md-hue-1.md-primary {
	color: rgb(121, 134, 203);
}

md-input-container.md-hue-1 .md-input {
	color: rgba(0, 0, 0, 0.87);
	border-color: rgba(0, 0, 0, 0.12);
	text-shadow:;
}

md-input-container.md-hue-1 .md-input::-webkit-input-placeholder,
	md-input-container.md-hue-1 .md-input::-moz-placeholder,
	md-input-container.md-hue-1 .md-input:-moz-placeholder,
	md-input-container.md-hue-1 .md-input:-ms-input-placeholder {
	color: rgba(0, 0, 0, 0.26);
}

md-input-container.md-hue-1>md-icon {
	color: rgba(0, 0, 0, 0.87);
}

md-input-container.md-hue-1 label, md-input-container.md-hue-1 .md-placeholder
	{
	text-shadow:;
	color: rgba(0, 0, 0, 0.26);
}

md-input-container.md-hue-1:not (.md-input-invalid ).md-input-has-value label
	{
	color: rgba(0, 0, 0, 0.54);
}

md-input-container.md-hue-1:not (.md-input-invalid ).md-input-focused .md-input
	{
	border-color: rgb(63, 81, 181);
}

md-input-container.md-hue-1:not (.md-input-invalid ).md-input-focused label
	{
	color: rgb(63, 81, 181);
}

md-input-container.md-hue-1:not (.md-input-invalid ).md-input-focused md-icon
	{
	color: rgb(63, 81, 181);
}

md-list.md-hue-1 md-list-item.md-2-line .md-list-item-text h3, md-list.md-hue-1 md-list-item.md-2-line .md-list-item-text h4,
	md-list.md-hue-1 md-list-item.md-3-line .md-list-item-text h3, md-list.md-hue-1 md-list-item.md-3-line .md-list-item-text h4
	{
	color: rgba(0, 0, 0, 0.87);
}

md-list.md-hue-1 md-list-item.md-2-line .md-list-item-text p, md-list.md-hue-1 md-list-item.md-3-line .md-list-item-text p
	{
	color: rgba(0, 0, 0, 0.54);
}

md-list.md-hue-1 md-list-item>md-icon {
	color: rgba(0, 0, 0, 0.54);
}

md-list.md-hue-1 md-list-item>md-icon.md-highlight {
	color: rgb(121, 134, 203);
}

md-progress-circular.md-hue-1 .md-inner .md-gap {
	border-top-color: rgb(121, 134, 203);
	border-bottom-color: rgb(121, 134, 203);
}

md-progress-circular.md-hue-1 .md-inner .md-left .md-half-circle,
	md-progress-circular.md-hue-1 .md-inner .md-right .md-half-circle {
	border-top-color: rgb(121, 134, 203);
}

md-progress-circular.md-hue-1 .md-inner .md-right .md-half-circle {
	border-right-color: rgb(121, 134, 203);
}

md-progress-circular.md-hue-1 .md-inner .md-left .md-half-circle {
	border-left-color: rgb(121, 134, 203);
}

md-progress-linear.md-hue-1 .md-container {
	background-color: rgb(197, 202, 233);
}

md-progress-linear.md-hue-1 .md-bar {
	background-color: rgb(121, 134, 203);
}

md-radio-button.md-hue-1 .md-off {
	border-color: rgba(0, 0, 0, 0.54);
}

md-radio-group.md-hue-1:not ([disabled] ) .md-primary .md-on,
	md-radio-group.md-hue-1:not ([disabled] ).md-primary .md-on,
	md-radio-button.md-hue-1:not ([disabled] ) .md-primary .md-on,
	md-radio-button.md-hue-1:not ([disabled] ).md-primary .md-on {
	background-color: rgba(121, 134, 203, 0.87);
}

md-radio-group.md-hue-1:not ([disabled] ) .md-primary .md-checked .md-off,
	md-radio-group.md-hue-1:not ([disabled] ) .md-primary.md-checked .md-off,
	md-radio-group.md-hue-1:not ([disabled] ).md-primary .md-checked .md-off,
	md-radio-group.md-hue-1:not ([disabled] ).md-primary.md-checked .md-off,
	md-radio-button.md-hue-1:not ([disabled] ) .md-primary .md-checked .md-off,
	md-radio-button.md-hue-1:not ([disabled] ) .md-primary.md-checked .md-off,
	md-radio-button.md-hue-1:not ([disabled] ).md-primary .md-checked .md-off,
	md-radio-button.md-hue-1:not ([disabled] ).md-primary.md-checked .md-off
	{
	border-color: rgba(121, 134, 203, 0.87);
}

md-radio-group.md-hue-1:not ([disabled] ) .md-primary .md-checked .md-ink-ripple,
	md-radio-group.md-hue-1:not ([disabled] ) .md-primary.md-checked .md-ink-ripple,
	md-radio-group.md-hue-1:not ([disabled] ).md-primary .md-checked .md-ink-ripple,
	md-radio-group.md-hue-1:not ([disabled] ).md-primary.md-checked .md-ink-ripple,
	md-radio-button.md-hue-1:not ([disabled] ) .md-primary .md-checked .md-ink-ripple,
	md-radio-button.md-hue-1:not ([disabled] ) .md-primary.md-checked .md-ink-ripple,
	md-radio-button.md-hue-1:not ([disabled] ).md-primary .md-checked .md-ink-ripple,
	md-radio-button.md-hue-1:not ([disabled] ).md-primary.md-checked .md-ink-ripple
	{
	color: rgba(121, 134, 203, 0.87);
}

md-radio-group.md-hue-1:not ([disabled] ) .md-primary .md-container .md-ripple,
	md-radio-group.md-hue-1:not ([disabled] ).md-primary .md-container .md-ripple,
	md-radio-button.md-hue-1:not ([disabled] ) .md-primary .md-container .md-ripple,
	md-radio-button.md-hue-1:not ([disabled] ).md-primary .md-container .md-ripple
	{
	color: rgb(57, 73, 171);
}

md-radio-group.md-hue-1[disabled], md-radio-button.md-hue-1[disabled] {
	color: rgba(0, 0, 0, 0.26);
}

md-radio-group.md-hue-1[disabled] .md-container .md-off, md-radio-button.md-hue-1[disabled] .md-container .md-off
	{
	border-color: rgba(0, 0, 0, 0.26);
}

md-radio-group.md-hue-1[disabled] .md-container .md-on, md-radio-button.md-hue-1[disabled] .md-container .md-on
	{
	border-color: rgba(0, 0, 0, 0.26);
}

md-radio-group.md-hue-1.md-focused:not (:empty ) .md-checked:not ([disabled]
	).md-primary .md-container:before {
	background-color: rgba(121, 134, 203, 0.26);
}

md-radio-group.md-hue-1.md-focused:not (:empty ) .md-checked.md-primary .md-container:before
	{
	background-color: '-0.26';
}

md-select.md-hue-1 .md-select-value {
	border-bottom-color: rgba(0, 0, 0, 0.12);
}

md-select.md-hue-1 .md-select-value.md-select-placeholder {
	color: rgba(0, 0, 0, 0.26);
}

md-select.md-hue-1:not ([disabled] ):focus .md-select-value {
	border-bottom-color: rgb(121, 134, 203);
	color: rgba(0, 0, 0, 0.87);
}

md-select.md-hue-1:not ([disabled] ):focus .md-select-value.md-select-placeholder
	{
	color: rgba(0, 0, 0, 0.87);
}

md-select.md-hue-1[disabled] .md-select-value {
	color: rgba(0, 0, 0, 0.26);
}

md-select.md-hue-1[disabled] .md-select-value.md-select-placeholder {
	color: rgba(0, 0, 0, 0.26);
}

md-select-menu.md-hue-1 md-option[disabled] {
	color: rgba(0, 0, 0, 0.26);
}

md-select-menu.md-hue-1 md-optgroup {
	color: rgba(0, 0, 0, 0.54);
}

md-select-menu.md-hue-1 md-optgroup md-option {
	color: rgba(0, 0, 0, 0.87);
}

md-select-menu.md-hue-1 md-option[selected] {
	color: rgb(63, 81, 181);
}

md-select-menu.md-hue-1 md-option[selected]:focus {
	color: rgb(57, 73, 171);
}

md-slider.md-hue-1 .md-focus-ring {
	border-color: rgba(0, 0, 0, 0.12);
}

md-slider.md-hue-1.md-primary .md-track.md-track-fill {
	background-color: rgb(121, 134, 203);
}

md-slider.md-hue-1.md-primary .md-thumb:after {
	border-color: rgb(121, 134, 203);
	background-color: rgb(121, 134, 203);
}

md-slider.md-hue-1.md-primary .md-sign {
	background-color: rgb(121, 134, 203);
}

md-slider.md-hue-1.md-primary .md-sign:after {
	border-top-color: rgb(121, 134, 203);
}

md-slider.md-hue-1.md-primary .md-thumb-text {
	color: rgb(255, 255, 255);
}

md-slider.md-hue-1[disabled] .md-thumb:after {
	border-color: rgba(0, 0, 0, 0.26);
}

.md-subheader.md-hue-1.md-primary {
	color: rgb(121, 134, 203);
}

md-switch.md-hue-1.md-checked.md-primary .md-thumb {
	background-color: rgb(121, 134, 203);
}

md-switch.md-hue-1.md-checked.md-primary .md-bar {
	background-color: rgba(121, 134, 203, 0.5);
}

md-switch.md-hue-1.md-checked.md-primary.md-focused .md-thumb:before {
	background-color: rgba(121, 134, 203, 0.26);
}

md-tabs.md-hue-1 .md-paginator md-icon {
	color: rgb(121, 134, 203);
}

md-tabs.md-hue-1 .md-tab {
	color: rgba(0, 0, 0, 0.54);
}

md-tabs.md-hue-1 .md-tab[disabled] {
	color: rgba(0, 0, 0, 0.26);
}

md-tabs.md-hue-1 .md-tab.md-active, md-tabs.md-hue-1 .md-tab.md-focused
	{
	color: rgb(121, 134, 203);
}

md-tabs.md-hue-1 .md-tab.md-focused {
	background: rgba(121, 134, 203, 0.1);
}

md-tabs.md-hue-1.md-primary>md-tabs-wrapper {
	background-color: rgb(121, 134, 203);
}

md-tabs.md-hue-1.md-primary>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ) {
	color: rgb(197, 202, 233);
}

md-tabs.md-hue-1.md-primary>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-active, md-tabs.md-hue-1.md-primary>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	color: rgb(255, 255, 255);
}

md-tabs.md-hue-1.md-primary>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	background: rgba(255, 255, 255, 0.1);
}

md-toolbar>md-tabs.md-hue-1>md-tabs-wrapper {
	background-color: rgb(121, 134, 203);
}

md-toolbar>md-tabs.md-hue-1>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ) {
	color: rgb(197, 202, 233);
}

md-toolbar>md-tabs.md-hue-1>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-active, md-toolbar>md-tabs.md-hue-1>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	color: rgb(255, 255, 255);
}

md-toolbar>md-tabs.md-hue-1>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	background: rgba(255, 255, 255, 0.1);
}

md-toast.md-hue-1 .md-button.md-highlight {
	color: rgb(83, 109, 254);
}

md-toolbar.md-hue-1 {
	background-color: rgb(121, 134, 203);
	color: rgb(255, 255, 255);
}

md-toolbar.md-hue-1 md-icon {
	color: rgb(255, 255, 255);
}

md-toolbar.md-hue-1 .md-button {
	color: rgb(255, 255, 255);
}
</style>
<style class="ng-binding" type="text/css">
md-bottom-sheet.md-hue-2.md-list md-list-item {
	color: rgba(0, 0, 0, 0.87);
}

md-bottom-sheet.md-hue-2 .md-subheader {
	color: rgba(0, 0, 0, 0.87);
}

md-card.md-hue-2 .md-card-image {
	border-radius: 2px 2px 0 0;
}

md-checkbox.md-hue-2 .md-icon {
	border-color: rgba(0, 0, 0, 0.54);
}

md-checkbox.md-hue-2:not ([disabled] ).md-primary .md-ripple {
	color: rgb(57, 73, 171);
}

md-checkbox.md-hue-2:not ([disabled] ).md-primary.md-checked .md-ripple
	{
	color: rgb(117, 117, 117);
}

md-checkbox.md-hue-2:not ([disabled] ).md-primary .md-icon {
	border-color: rgba(0, 0, 0, 0.54);
}

md-checkbox.md-hue-2:not ([disabled] ).md-primary.md-checked .md-icon {
	background-color: rgba(40, 53, 147, 0.87);
}

md-checkbox.md-hue-2:not ([disabled] ).md-primary.md-checked.md-focused .md-container:before
	{
	background-color: rgba(40, 53, 147, 0.26);
}

md-checkbox.md-hue-2:not ([disabled] ).md-primary.md-checked .md-icon:after
	{
	border-color: rgb(238, 238, 238);
}

md-checkbox.md-hue-2[disabled] .md-icon {
	border-color: rgba(0, 0, 0, 0.26);
}

md-checkbox.md-hue-2[disabled] .md-label {
	color: rgba(0, 0, 0, 0.26);
}

a.md-button.md-hue-2, .md-button.md-hue-2 {
	border-radius: 3px;
}

a.md-button.md-hue-2.md-icon-button, .md-button.md-hue-2.md-icon-button
	{
	border-radius: 50%;
}

a.md-button.md-hue-2.md-primary, .md-button.md-hue-2.md-primary {
	color: rgb(40, 53, 147);
}

a.md-button.md-hue-2.md-primary.md-raised, a.md-button.md-hue-2.md-primary.md-fab,
	.md-button.md-hue-2.md-primary.md-raised, .md-button.md-hue-2.md-primary.md-fab
	{
	color: rgba(255, 255, 255, 0.87);
	background-color: rgb(40, 53, 147);
}

a.md-button.md-hue-2.md-primary.md-raised:not ([disabled] ) md-icon, a.md-button.md-hue-2.md-primary.md-fab:not
	([disabled] ) md-icon, .md-button.md-hue-2.md-primary.md-raised:not ([disabled]
	) md-icon, .md-button.md-hue-2.md-primary.md-fab:not ([disabled] ) md-icon
	{
	color: rgba(255, 255, 255, 0.87);
}

a.md-button.md-hue-2.md-primary.md-raised:not ([disabled] ):hover, a.md-button.md-hue-2.md-primary.md-fab:not
	([disabled] ):hover, .md-button.md-hue-2.md-primary.md-raised:not ([disabled]
	):hover, .md-button.md-hue-2.md-primary.md-fab:not ([disabled] ):hover
	{
	background-color: rgb(40, 53, 147);
}

a.md-button.md-hue-2.md-primary.md-raised:not ([disabled] ).md-focused,
	a.md-button.md-hue-2.md-primary.md-fab:not ([disabled] ).md-focused,
	.md-button.md-hue-2.md-primary.md-raised:not ([disabled] ).md-focused,
	.md-button.md-hue-2.md-primary.md-fab:not ([disabled] ).md-focused {
	background-color: rgb(57, 73, 171);
}

a.md-button.md-hue-2.md-primary:not ([disabled] ) md-icon, .md-button.md-hue-2.md-primary:not
	([disabled] ) md-icon {
	color: rgb(40, 53, 147);
}

md-divider.md-hue-2 {
	border-top-color: rgba(0, 0, 0, 0.12);
}

md-chips.md-hue-2 .md-chips.md-focused {
	box-shadow: 0 2px rgb(40, 53, 147);
}

md-chips.md-hue-2 .md-chip.md-focused {
	background: rgb(40, 53, 147);
	color: rgba(255, 255, 255, 0.87);
}

md-chips.md-hue-2 .md-chip.md-focused md-icon {
	color: rgba(255, 255, 255, 0.87);
}

md-dialog.md-hue-2.md-content-overflow .md-actions {
	border-top-color: rgba(0, 0, 0, 0.12);
}

md-icon.md-hue-2 {
	color: rgba(0, 0, 0, 0.54);
}

md-icon.md-hue-2.md-primary {
	color: rgb(40, 53, 147);
}

md-input-container.md-hue-2 .md-input {
	color: rgba(0, 0, 0, 0.87);
	border-color: rgba(0, 0, 0, 0.12);
	text-shadow:;
}

md-input-container.md-hue-2 .md-input::-webkit-input-placeholder,
	md-input-container.md-hue-2 .md-input::-moz-placeholder,
	md-input-container.md-hue-2 .md-input:-moz-placeholder,
	md-input-container.md-hue-2 .md-input:-ms-input-placeholder {
	color: rgba(0, 0, 0, 0.26);
}

md-input-container.md-hue-2>md-icon {
	color: rgba(0, 0, 0, 0.87);
}

md-input-container.md-hue-2 label, md-input-container.md-hue-2 .md-placeholder
	{
	text-shadow:;
	color: rgba(0, 0, 0, 0.26);
}

md-input-container.md-hue-2:not (.md-input-invalid ).md-input-has-value label
	{
	color: rgba(0, 0, 0, 0.54);
}

md-input-container.md-hue-2:not (.md-input-invalid ).md-input-focused .md-input
	{
	border-color: rgb(63, 81, 181);
}

md-input-container.md-hue-2:not (.md-input-invalid ).md-input-focused label
	{
	color: rgb(63, 81, 181);
}

md-input-container.md-hue-2:not (.md-input-invalid ).md-input-focused md-icon
	{
	color: rgb(63, 81, 181);
}

md-list.md-hue-2 md-list-item.md-2-line .md-list-item-text h3, md-list.md-hue-2 md-list-item.md-2-line .md-list-item-text h4,
	md-list.md-hue-2 md-list-item.md-3-line .md-list-item-text h3, md-list.md-hue-2 md-list-item.md-3-line .md-list-item-text h4
	{
	color: rgba(0, 0, 0, 0.87);
}

md-list.md-hue-2 md-list-item.md-2-line .md-list-item-text p, md-list.md-hue-2 md-list-item.md-3-line .md-list-item-text p
	{
	color: rgba(0, 0, 0, 0.54);
}

md-list.md-hue-2 md-list-item>md-icon {
	color: rgba(0, 0, 0, 0.54);
}

md-list.md-hue-2 md-list-item>md-icon.md-highlight {
	color: rgb(40, 53, 147);
}

md-progress-circular.md-hue-2 .md-inner .md-gap {
	border-top-color: rgb(40, 53, 147);
	border-bottom-color: rgb(40, 53, 147);
}

md-progress-circular.md-hue-2 .md-inner .md-left .md-half-circle,
	md-progress-circular.md-hue-2 .md-inner .md-right .md-half-circle {
	border-top-color: rgb(40, 53, 147);
}

md-progress-circular.md-hue-2 .md-inner .md-right .md-half-circle {
	border-right-color: rgb(40, 53, 147);
}

md-progress-circular.md-hue-2 .md-inner .md-left .md-half-circle {
	border-left-color: rgb(40, 53, 147);
}

md-progress-linear.md-hue-2 .md-container {
	background-color: rgb(197, 202, 233);
}

md-progress-linear.md-hue-2 .md-bar {
	background-color: rgb(40, 53, 147);
}

md-radio-button.md-hue-2 .md-off {
	border-color: rgba(0, 0, 0, 0.54);
}

md-radio-group.md-hue-2:not ([disabled] ) .md-primary .md-on,
	md-radio-group.md-hue-2:not ([disabled] ).md-primary .md-on,
	md-radio-button.md-hue-2:not ([disabled] ) .md-primary .md-on,
	md-radio-button.md-hue-2:not ([disabled] ).md-primary .md-on {
	background-color: rgba(40, 53, 147, 0.87);
}

md-radio-group.md-hue-2:not ([disabled] ) .md-primary .md-checked .md-off,
	md-radio-group.md-hue-2:not ([disabled] ) .md-primary.md-checked .md-off,
	md-radio-group.md-hue-2:not ([disabled] ).md-primary .md-checked .md-off,
	md-radio-group.md-hue-2:not ([disabled] ).md-primary.md-checked .md-off,
	md-radio-button.md-hue-2:not ([disabled] ) .md-primary .md-checked .md-off,
	md-radio-button.md-hue-2:not ([disabled] ) .md-primary.md-checked .md-off,
	md-radio-button.md-hue-2:not ([disabled] ).md-primary .md-checked .md-off,
	md-radio-button.md-hue-2:not ([disabled] ).md-primary.md-checked .md-off
	{
	border-color: rgba(40, 53, 147, 0.87);
}

md-radio-group.md-hue-2:not ([disabled] ) .md-primary .md-checked .md-ink-ripple,
	md-radio-group.md-hue-2:not ([disabled] ) .md-primary.md-checked .md-ink-ripple,
	md-radio-group.md-hue-2:not ([disabled] ).md-primary .md-checked .md-ink-ripple,
	md-radio-group.md-hue-2:not ([disabled] ).md-primary.md-checked .md-ink-ripple,
	md-radio-button.md-hue-2:not ([disabled] ) .md-primary .md-checked .md-ink-ripple,
	md-radio-button.md-hue-2:not ([disabled] ) .md-primary.md-checked .md-ink-ripple,
	md-radio-button.md-hue-2:not ([disabled] ).md-primary .md-checked .md-ink-ripple,
	md-radio-button.md-hue-2:not ([disabled] ).md-primary.md-checked .md-ink-ripple
	{
	color: rgba(40, 53, 147, 0.87);
}

md-radio-group.md-hue-2:not ([disabled] ) .md-primary .md-container .md-ripple,
	md-radio-group.md-hue-2:not ([disabled] ).md-primary .md-container .md-ripple,
	md-radio-button.md-hue-2:not ([disabled] ) .md-primary .md-container .md-ripple,
	md-radio-button.md-hue-2:not ([disabled] ).md-primary .md-container .md-ripple
	{
	color: rgb(57, 73, 171);
}

md-radio-group.md-hue-2[disabled], md-radio-button.md-hue-2[disabled] {
	color: rgba(0, 0, 0, 0.26);
}

md-radio-group.md-hue-2[disabled] .md-container .md-off, md-radio-button.md-hue-2[disabled] .md-container .md-off
	{
	border-color: rgba(0, 0, 0, 0.26);
}

md-radio-group.md-hue-2[disabled] .md-container .md-on, md-radio-button.md-hue-2[disabled] .md-container .md-on
	{
	border-color: rgba(0, 0, 0, 0.26);
}

md-radio-group.md-hue-2.md-focused:not (:empty ) .md-checked:not ([disabled]
	).md-primary .md-container:before {
	background-color: rgba(40, 53, 147, 0.26);
}

md-radio-group.md-hue-2.md-focused:not (:empty ) .md-checked.md-primary .md-container:before
	{
	background-color: '-0.26';
}

md-select.md-hue-2 .md-select-value {
	border-bottom-color: rgba(0, 0, 0, 0.12);
}

md-select.md-hue-2 .md-select-value.md-select-placeholder {
	color: rgba(0, 0, 0, 0.26);
}

md-select.md-hue-2:not ([disabled] ):focus .md-select-value {
	border-bottom-color: rgb(40, 53, 147);
	color: rgba(0, 0, 0, 0.87);
}

md-select.md-hue-2:not ([disabled] ):focus .md-select-value.md-select-placeholder
	{
	color: rgba(0, 0, 0, 0.87);
}

md-select.md-hue-2[disabled] .md-select-value {
	color: rgba(0, 0, 0, 0.26);
}

md-select.md-hue-2[disabled] .md-select-value.md-select-placeholder {
	color: rgba(0, 0, 0, 0.26);
}

md-select-menu.md-hue-2 md-option[disabled] {
	color: rgba(0, 0, 0, 0.26);
}

md-select-menu.md-hue-2 md-optgroup {
	color: rgba(0, 0, 0, 0.54);
}

md-select-menu.md-hue-2 md-optgroup md-option {
	color: rgba(0, 0, 0, 0.87);
}

md-select-menu.md-hue-2 md-option[selected] {
	color: rgb(63, 81, 181);
}

md-select-menu.md-hue-2 md-option[selected]:focus {
	color: rgb(57, 73, 171);
}

md-slider.md-hue-2 .md-focus-ring {
	border-color: rgba(0, 0, 0, 0.12);
}

md-slider.md-hue-2.md-primary .md-track.md-track-fill {
	background-color: rgb(40, 53, 147);
}

md-slider.md-hue-2.md-primary .md-thumb:after {
	border-color: rgb(40, 53, 147);
	background-color: rgb(40, 53, 147);
}

md-slider.md-hue-2.md-primary .md-sign {
	background-color: rgb(40, 53, 147);
}

md-slider.md-hue-2.md-primary .md-sign:after {
	border-top-color: rgb(40, 53, 147);
}

md-slider.md-hue-2.md-primary .md-thumb-text {
	color: rgba(255, 255, 255, 0.87);
}

md-slider.md-hue-2[disabled] .md-thumb:after {
	border-color: rgba(0, 0, 0, 0.26);
}

.md-subheader.md-hue-2.md-primary {
	color: rgb(40, 53, 147);
}

md-switch.md-hue-2.md-checked.md-primary .md-thumb {
	background-color: rgb(40, 53, 147);
}

md-switch.md-hue-2.md-checked.md-primary .md-bar {
	background-color: rgba(40, 53, 147, 0.5);
}

md-switch.md-hue-2.md-checked.md-primary.md-focused .md-thumb:before {
	background-color: rgba(40, 53, 147, 0.26);
}

md-tabs.md-hue-2 .md-paginator md-icon {
	color: rgb(40, 53, 147);
}

md-tabs.md-hue-2 .md-tab {
	color: rgba(0, 0, 0, 0.54);
}

md-tabs.md-hue-2 .md-tab[disabled] {
	color: rgba(0, 0, 0, 0.26);
}

md-tabs.md-hue-2 .md-tab.md-active, md-tabs.md-hue-2 .md-tab.md-focused
	{
	color: rgb(40, 53, 147);
}

md-tabs.md-hue-2 .md-tab.md-focused {
	background: rgba(40, 53, 147, 0.1);
}

md-tabs.md-hue-2.md-primary>md-tabs-wrapper {
	background-color: rgb(40, 53, 147);
}

md-tabs.md-hue-2.md-primary>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ) {
	color: rgb(197, 202, 233);
}

md-tabs.md-hue-2.md-primary>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-active, md-tabs.md-hue-2.md-primary>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	color: rgba(255, 255, 255, 0.87);
}

md-tabs.md-hue-2.md-primary>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	background: rgba(255, 255, 255, 0.1);
}

md-toolbar>md-tabs.md-hue-2>md-tabs-wrapper {
	background-color: rgb(40, 53, 147);
}

md-toolbar>md-tabs.md-hue-2>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ) {
	color: rgb(197, 202, 233);
}

md-toolbar>md-tabs.md-hue-2>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-active, md-toolbar>md-tabs.md-hue-2>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	color: rgba(255, 255, 255, 0.87);
}

md-toolbar>md-tabs.md-hue-2>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	background: rgba(255, 255, 255, 0.1);
}

md-toast.md-hue-2 .md-button.md-highlight {
	color: rgb(83, 109, 254);
}

md-toolbar.md-hue-2 {
	background-color: rgb(40, 53, 147);
	color: rgba(255, 255, 255, 0.87);
}

md-toolbar.md-hue-2 md-icon {
	color: rgba(255, 255, 255, 0.87);
}

md-toolbar.md-hue-2 .md-button {
	color: rgba(255, 255, 255, 0.87);
}
</style>
<style class="ng-binding" type="text/css">
md-bottom-sheet.md-hue-3.md-list md-list-item {
	color: rgba(0, 0, 0, 0.87);
}

md-bottom-sheet.md-hue-3 .md-subheader {
	color: rgba(0, 0, 0, 0.87);
}

md-card.md-hue-3 .md-card-image {
	border-radius: 2px 2px 0 0;
}

md-checkbox.md-hue-3 .md-icon {
	border-color: rgba(0, 0, 0, 0.54);
}

md-checkbox.md-hue-3:not ([disabled] ).md-primary .md-ripple {
	color: rgb(57, 73, 171);
}

md-checkbox.md-hue-3:not ([disabled] ).md-primary.md-checked .md-ripple
	{
	color: rgb(117, 117, 117);
}

md-checkbox.md-hue-3:not ([disabled] ).md-primary .md-icon {
	border-color: rgba(0, 0, 0, 0.54);
}

md-checkbox.md-hue-3:not ([disabled] ).md-primary.md-checked .md-icon {
	background-color: rgba(140, 158, 255, 0.87);
}

md-checkbox.md-hue-3:not ([disabled] ).md-primary.md-checked.md-focused .md-container:before
	{
	background-color: rgba(140, 158, 255, 0.26);
}

md-checkbox.md-hue-3:not ([disabled] ).md-primary.md-checked .md-icon:after
	{
	border-color: rgb(238, 238, 238);
}

md-checkbox.md-hue-3[disabled] .md-icon {
	border-color: rgba(0, 0, 0, 0.26);
}

md-checkbox.md-hue-3[disabled] .md-label {
	color: rgba(0, 0, 0, 0.26);
}

a.md-button.md-hue-3, .md-button.md-hue-3 {
	border-radius: 3px;
}

a.md-button.md-hue-3.md-icon-button, .md-button.md-hue-3.md-icon-button
	{
	border-radius: 50%;
}

a.md-button.md-hue-3.md-primary, .md-button.md-hue-3.md-primary {
	color: rgb(140, 158, 255);
}

a.md-button.md-hue-3.md-primary.md-raised, a.md-button.md-hue-3.md-primary.md-fab,
	.md-button.md-hue-3.md-primary.md-raised, .md-button.md-hue-3.md-primary.md-fab
	{
	color: rgba(0, 0, 0, 0.87);
	background-color: rgb(140, 158, 255);
}

a.md-button.md-hue-3.md-primary.md-raised:not ([disabled] ) md-icon, a.md-button.md-hue-3.md-primary.md-fab:not
	([disabled] ) md-icon, .md-button.md-hue-3.md-primary.md-raised:not ([disabled]
	) md-icon, .md-button.md-hue-3.md-primary.md-fab:not ([disabled] ) md-icon
	{
	color: rgba(0, 0, 0, 0.87);
}

a.md-button.md-hue-3.md-primary.md-raised:not ([disabled] ):hover, a.md-button.md-hue-3.md-primary.md-fab:not
	([disabled] ):hover, .md-button.md-hue-3.md-primary.md-raised:not ([disabled]
	):hover, .md-button.md-hue-3.md-primary.md-fab:not ([disabled] ):hover
	{
	background-color: rgb(140, 158, 255);
}

a.md-button.md-hue-3.md-primary.md-raised:not ([disabled] ).md-focused,
	a.md-button.md-hue-3.md-primary.md-fab:not ([disabled] ).md-focused,
	.md-button.md-hue-3.md-primary.md-raised:not ([disabled] ).md-focused,
	.md-button.md-hue-3.md-primary.md-fab:not ([disabled] ).md-focused {
	background-color: rgb(57, 73, 171);
}

a.md-button.md-hue-3.md-primary:not ([disabled] ) md-icon, .md-button.md-hue-3.md-primary:not
	([disabled] ) md-icon {
	color: rgb(140, 158, 255);
}

md-divider.md-hue-3 {
	border-top-color: rgba(0, 0, 0, 0.12);
}

md-chips.md-hue-3 .md-chips.md-focused {
	box-shadow: 0 2px rgb(140, 158, 255);
}

md-chips.md-hue-3 .md-chip.md-focused {
	background: rgb(140, 158, 255);
	color: rgba(0, 0, 0, 0.87);
}

md-chips.md-hue-3 .md-chip.md-focused md-icon {
	color: rgba(0, 0, 0, 0.87);
}

md-dialog.md-hue-3.md-content-overflow .md-actions {
	border-top-color: rgba(0, 0, 0, 0.12);
}

md-icon.md-hue-3 {
	color: rgba(0, 0, 0, 0.54);
}

md-icon.md-hue-3.md-primary {
	color: rgb(140, 158, 255);
}

md-input-container.md-hue-3 .md-input {
	color: rgba(0, 0, 0, 0.87);
	border-color: rgba(0, 0, 0, 0.12);
	text-shadow:;
}

md-input-container.md-hue-3 .md-input::-webkit-input-placeholder,
	md-input-container.md-hue-3 .md-input::-moz-placeholder,
	md-input-container.md-hue-3 .md-input:-moz-placeholder,
	md-input-container.md-hue-3 .md-input:-ms-input-placeholder {
	color: rgba(0, 0, 0, 0.26);
}

md-input-container.md-hue-3>md-icon {
	color: rgba(0, 0, 0, 0.87);
}

md-input-container.md-hue-3 label, md-input-container.md-hue-3 .md-placeholder
	{
	text-shadow:;
	color: rgba(0, 0, 0, 0.26);
}

md-input-container.md-hue-3:not (.md-input-invalid ).md-input-has-value label
	{
	color: rgba(0, 0, 0, 0.54);
}

md-input-container.md-hue-3:not (.md-input-invalid ).md-input-focused .md-input
	{
	border-color: rgb(63, 81, 181);
}

md-input-container.md-hue-3:not (.md-input-invalid ).md-input-focused label
	{
	color: rgb(63, 81, 181);
}

md-input-container.md-hue-3:not (.md-input-invalid ).md-input-focused md-icon
	{
	color: rgb(63, 81, 181);
}

md-list.md-hue-3 md-list-item.md-2-line .md-list-item-text h3, md-list.md-hue-3 md-list-item.md-2-line .md-list-item-text h4,
	md-list.md-hue-3 md-list-item.md-3-line .md-list-item-text h3, md-list.md-hue-3 md-list-item.md-3-line .md-list-item-text h4
	{
	color: rgba(0, 0, 0, 0.87);
}

md-list.md-hue-3 md-list-item.md-2-line .md-list-item-text p, md-list.md-hue-3 md-list-item.md-3-line .md-list-item-text p
	{
	color: rgba(0, 0, 0, 0.54);
}

md-list.md-hue-3 md-list-item>md-icon {
	color: rgba(0, 0, 0, 0.54);
}

md-list.md-hue-3 md-list-item>md-icon.md-highlight {
	color: rgb(140, 158, 255);
}

md-progress-circular.md-hue-3 .md-inner .md-gap {
	border-top-color: rgb(140, 158, 255);
	border-bottom-color: rgb(140, 158, 255);
}

md-progress-circular.md-hue-3 .md-inner .md-left .md-half-circle,
	md-progress-circular.md-hue-3 .md-inner .md-right .md-half-circle {
	border-top-color: rgb(140, 158, 255);
}

md-progress-circular.md-hue-3 .md-inner .md-right .md-half-circle {
	border-right-color: rgb(140, 158, 255);
}

md-progress-circular.md-hue-3 .md-inner .md-left .md-half-circle {
	border-left-color: rgb(140, 158, 255);
}

md-progress-linear.md-hue-3 .md-container {
	background-color: rgb(197, 202, 233);
}

md-progress-linear.md-hue-3 .md-bar {
	background-color: rgb(140, 158, 255);
}

md-radio-button.md-hue-3 .md-off {
	border-color: rgba(0, 0, 0, 0.54);
}

md-radio-group.md-hue-3:not ([disabled] ) .md-primary .md-on,
	md-radio-group.md-hue-3:not ([disabled] ).md-primary .md-on,
	md-radio-button.md-hue-3:not ([disabled] ) .md-primary .md-on,
	md-radio-button.md-hue-3:not ([disabled] ).md-primary .md-on {
	background-color: rgba(140, 158, 255, 0.87);
}

md-radio-group.md-hue-3:not ([disabled] ) .md-primary .md-checked .md-off,
	md-radio-group.md-hue-3:not ([disabled] ) .md-primary.md-checked .md-off,
	md-radio-group.md-hue-3:not ([disabled] ).md-primary .md-checked .md-off,
	md-radio-group.md-hue-3:not ([disabled] ).md-primary.md-checked .md-off,
	md-radio-button.md-hue-3:not ([disabled] ) .md-primary .md-checked .md-off,
	md-radio-button.md-hue-3:not ([disabled] ) .md-primary.md-checked .md-off,
	md-radio-button.md-hue-3:not ([disabled] ).md-primary .md-checked .md-off,
	md-radio-button.md-hue-3:not ([disabled] ).md-primary.md-checked .md-off
	{
	border-color: rgba(140, 158, 255, 0.87);
}

md-radio-group.md-hue-3:not ([disabled] ) .md-primary .md-checked .md-ink-ripple,
	md-radio-group.md-hue-3:not ([disabled] ) .md-primary.md-checked .md-ink-ripple,
	md-radio-group.md-hue-3:not ([disabled] ).md-primary .md-checked .md-ink-ripple,
	md-radio-group.md-hue-3:not ([disabled] ).md-primary.md-checked .md-ink-ripple,
	md-radio-button.md-hue-3:not ([disabled] ) .md-primary .md-checked .md-ink-ripple,
	md-radio-button.md-hue-3:not ([disabled] ) .md-primary.md-checked .md-ink-ripple,
	md-radio-button.md-hue-3:not ([disabled] ).md-primary .md-checked .md-ink-ripple,
	md-radio-button.md-hue-3:not ([disabled] ).md-primary.md-checked .md-ink-ripple
	{
	color: rgba(140, 158, 255, 0.87);
}

md-radio-group.md-hue-3:not ([disabled] ) .md-primary .md-container .md-ripple,
	md-radio-group.md-hue-3:not ([disabled] ).md-primary .md-container .md-ripple,
	md-radio-button.md-hue-3:not ([disabled] ) .md-primary .md-container .md-ripple,
	md-radio-button.md-hue-3:not ([disabled] ).md-primary .md-container .md-ripple
	{
	color: rgb(57, 73, 171);
}

md-radio-group.md-hue-3[disabled], md-radio-button.md-hue-3[disabled] {
	color: rgba(0, 0, 0, 0.26);
}

md-radio-group.md-hue-3[disabled] .md-container .md-off, md-radio-button.md-hue-3[disabled] .md-container .md-off
	{
	border-color: rgba(0, 0, 0, 0.26);
}

md-radio-group.md-hue-3[disabled] .md-container .md-on, md-radio-button.md-hue-3[disabled] .md-container .md-on
	{
	border-color: rgba(0, 0, 0, 0.26);
}

md-radio-group.md-hue-3.md-focused:not (:empty ) .md-checked:not ([disabled]
	).md-primary .md-container:before {
	background-color: rgba(140, 158, 255, 0.26);
}

md-radio-group.md-hue-3.md-focused:not (:empty ) .md-checked.md-primary .md-container:before
	{
	background-color: '-0.26';
}

md-select.md-hue-3 .md-select-value {
	border-bottom-color: rgba(0, 0, 0, 0.12);
}

md-select.md-hue-3 .md-select-value.md-select-placeholder {
	color: rgba(0, 0, 0, 0.26);
}

md-select.md-hue-3:not ([disabled] ):focus .md-select-value {
	border-bottom-color: rgb(140, 158, 255);
	color: rgba(0, 0, 0, 0.87);
}

md-select.md-hue-3:not ([disabled] ):focus .md-select-value.md-select-placeholder
	{
	color: rgba(0, 0, 0, 0.87);
}

md-select.md-hue-3[disabled] .md-select-value {
	color: rgba(0, 0, 0, 0.26);
}

md-select.md-hue-3[disabled] .md-select-value.md-select-placeholder {
	color: rgba(0, 0, 0, 0.26);
}

md-select-menu.md-hue-3 md-option[disabled] {
	color: rgba(0, 0, 0, 0.26);
}

md-select-menu.md-hue-3 md-optgroup {
	color: rgba(0, 0, 0, 0.54);
}

md-select-menu.md-hue-3 md-optgroup md-option {
	color: rgba(0, 0, 0, 0.87);
}

md-select-menu.md-hue-3 md-option[selected] {
	color: rgb(63, 81, 181);
}

md-select-menu.md-hue-3 md-option[selected]:focus {
	color: rgb(57, 73, 171);
}

md-slider.md-hue-3 .md-focus-ring {
	border-color: rgba(0, 0, 0, 0.12);
}

md-slider.md-hue-3.md-primary .md-track.md-track-fill {
	background-color: rgb(140, 158, 255);
}

md-slider.md-hue-3.md-primary .md-thumb:after {
	border-color: rgb(140, 158, 255);
	background-color: rgb(140, 158, 255);
}

md-slider.md-hue-3.md-primary .md-sign {
	background-color: rgb(140, 158, 255);
}

md-slider.md-hue-3.md-primary .md-sign:after {
	border-top-color: rgb(140, 158, 255);
}

md-slider.md-hue-3.md-primary .md-thumb-text {
	color: rgba(0, 0, 0, 0.87);
}

md-slider.md-hue-3[disabled] .md-thumb:after {
	border-color: rgba(0, 0, 0, 0.26);
}

.md-subheader.md-hue-3.md-primary {
	color: rgb(140, 158, 255);
}

md-switch.md-hue-3.md-checked.md-primary .md-thumb {
	background-color: rgb(140, 158, 255);
}

md-switch.md-hue-3.md-checked.md-primary .md-bar {
	background-color: rgba(140, 158, 255, 0.5);
}

md-switch.md-hue-3.md-checked.md-primary.md-focused .md-thumb:before {
	background-color: rgba(140, 158, 255, 0.26);
}

md-tabs.md-hue-3 .md-paginator md-icon {
	color: rgb(140, 158, 255);
}

md-tabs.md-hue-3 .md-tab {
	color: rgba(0, 0, 0, 0.54);
}

md-tabs.md-hue-3 .md-tab[disabled] {
	color: rgba(0, 0, 0, 0.26);
}

md-tabs.md-hue-3 .md-tab.md-active, md-tabs.md-hue-3 .md-tab.md-focused
	{
	color: rgb(140, 158, 255);
}

md-tabs.md-hue-3 .md-tab.md-focused {
	background: rgba(140, 158, 255, 0.1);
}

md-tabs.md-hue-3.md-primary>md-tabs-wrapper {
	background-color: rgb(140, 158, 255);
}

md-tabs.md-hue-3.md-primary>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ) {
	color: rgb(197, 202, 233);
}

md-tabs.md-hue-3.md-primary>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-active, md-tabs.md-hue-3.md-primary>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	color: rgba(0, 0, 0, 0.87);
}

md-tabs.md-hue-3.md-primary>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	background: rgba(0, 0, 0, 0.1);
}

md-toolbar>md-tabs.md-hue-3>md-tabs-wrapper {
	background-color: rgb(140, 158, 255);
}

md-toolbar>md-tabs.md-hue-3>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ) {
	color: rgb(197, 202, 233);
}

md-toolbar>md-tabs.md-hue-3>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-active, md-toolbar>md-tabs.md-hue-3>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	color: rgba(0, 0, 0, 0.87);
}

md-toolbar>md-tabs.md-hue-3>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	background: rgba(0, 0, 0, 0.1);
}

md-toast.md-hue-3 .md-button.md-highlight {
	color: rgb(83, 109, 254);
}

md-toolbar.md-hue-3 {
	background-color: rgb(140, 158, 255);
	color: rgba(0, 0, 0, 0.87);
}

md-toolbar.md-hue-3 md-icon {
	color: rgba(0, 0, 0, 0.87);
}

md-toolbar.md-hue-3 .md-button {
	color: rgba(0, 0, 0, 0.87);
}
</style>
<style type="text/css">
md-checkbox .md-ripple {
	color: rgb(216, 27, 96);
}

md-checkbox.md-checked.md-focused .md-container:before {
	background-color: rgba(255, 64, 129, 0.26);
}

md-checkbox.md-checked .md-icon {
	background-color: rgba(255, 64, 129, 0.87);
}

a.md-button.md-fab, .md-button.md-fab {
	border-radius: 50%;
	background-color: rgb(255, 64, 129);
	color: rgb(255, 255, 255);
}

a.md-button.md-fab md-icon, .md-button.md-fab md-icon {
	color: rgb(255, 255, 255);
}

a.md-button.md-fab:not ([disabled] ):hover, .md-button.md-fab:not ([disabled]
	):hover {
	background-color: rgb(255, 64, 129);
}

a.md-button.md-fab:not ([disabled] ).md-focused, .md-button.md-fab:not ([disabled]
	).md-focused {
	background-color: rgb(197, 17, 98);
}

a.md-button.md-fab, .md-button.md-fab {
	border-radius: 50%;
	background-color: rgb(255, 64, 129);
	color: rgb(255, 255, 255);
}

a.md-button.md-fab:not ([disabled] ) .md-icon, .md-button.md-fab:not ([disabled]
	) .md-icon {
	color: rgb(255, 255, 255);
}

a.md-button.md-fab:not ([disabled] ):hover, .md-button.md-fab:not ([disabled]
	):hover {
	background-color: rgb(255, 64, 129);
}

a.md-button.md-fab:not ([disabled] ).md-focused, .md-button.md-fab:not ([disabled]
	).md-focused {
	background-color: rgb(197, 17, 98);
}

a.md-button.md-accent, .md-button.md-accent {
	color: rgb(255, 64, 129);
}

a.md-button.md-accent.md-raised, a.md-button.md-accent.md-fab,
	.md-button.md-accent.md-raised, .md-button.md-accent.md-fab {
	color: rgb(255, 255, 255);
	background-color: rgb(255, 64, 129);
}

a.md-button.md-accent.md-raised:not ([disabled] ) md-icon, a.md-button.md-accent.md-fab:not
	([disabled] ) md-icon, .md-button.md-accent.md-raised:not ([disabled] ) md-icon,
	.md-button.md-accent.md-fab:not ([disabled] ) md-icon {
	color: rgb(255, 255, 255);
}

a.md-button.md-accent.md-raised:not ([disabled] ):hover, a.md-button.md-accent.md-fab:not
	([disabled] ):hover, .md-button.md-accent.md-raised:not ([disabled] ):hover,
	.md-button.md-accent.md-fab:not ([disabled] ):hover {
	background-color: rgb(255, 64, 129);
}

a.md-button.md-accent.md-raised:not ([disabled] ).md-focused, a.md-button.md-accent.md-fab:not
	([disabled] ).md-focused, .md-button.md-accent.md-raised:not ([disabled]
	).md-focused, .md-button.md-accent.md-fab:not ([disabled] ).md-focused
	{
	background-color: rgb(194, 24, 91);
}

a.md-button.md-accent:not ([disabled] ) md-icon, .md-button.md-accent:not
	([disabled] ) md-icon {
	color: rgb(255, 64, 129);
}

a.md-button[disabled], a.md-button.md-raised[disabled], a.md-button.md-fab[disabled],
	a.md-button.md-accent[disabled], a.md-button.md-warn[disabled],
	.md-button[disabled], .md-button.md-raised[disabled], .md-button.md-fab[disabled],
	.md-button.md-accent[disabled], .md-button.md-warn[disabled] {
	color: rgba(0, 0, 0, 0.26);
	cursor: not-allowed;
}

a.md-button[disabled] md-icon, a.md-button.md-raised[disabled] md-icon,
	a.md-button.md-fab[disabled] md-icon, a.md-button.md-accent[disabled] md-icon,
	a.md-button.md-warn[disabled] md-icon, .md-button[disabled] md-icon,
	.md-button.md-raised[disabled] md-icon, .md-button.md-fab[disabled] md-icon,
	.md-button.md-accent[disabled] md-icon, .md-button.md-warn[disabled] md-icon
	{
	color: rgba(0, 0, 0, 0.26);
}

md-icon.md-accent {
	color: rgb(255, 64, 129);
}

md-input-container:not (.md-input-invalid ).md-input-focused.md-accent .md-input
	{
	border-color: rgb(233, 30, 99);
}

md-input-container:not (.md-input-invalid ).md-input-focused.md-accent label
	{
	color: rgb(233, 30, 99);
}

md-list md-list-item>md-icon.md-highlight.md-accent {
	color: rgb(255, 64, 129);
}

md-progress-circular.md-accent .md-inner .md-gap {
	border-top-color: rgb(255, 64, 129);
	border-bottom-color: rgb(255, 64, 129);
}

md-progress-circular.md-accent .md-inner .md-left .md-half-circle,
	md-progress-circular.md-accent .md-inner .md-right .md-half-circle {
	border-top-color: rgb(255, 64, 129);
}

md-progress-circular.md-accent .md-inner .md-right .md-half-circle {
	border-right-color: rgb(255, 64, 129);
}

md-progress-circular.md-accent .md-inner .md-left .md-half-circle {
	border-left-color: rgb(255, 64, 129);
}

md-progress-linear.md-accent .md-container {
	background-color: rgb(248, 187, 208);
}

md-progress-linear.md-accent .md-bar {
	background-color: rgb(255, 64, 129);
}

md-progress-linear[md-mode=buffer].md-accent .md-bar1 {
	background-color: rgb(248, 187, 208);
}

md-progress-linear[md-mode=buffer].md-accent .md-dashed:before {
	background: radial-gradient(rgb(248, 187, 208) 0%, rgb(248, 187, 208)
		16%, transparent 42%);
}

md-radio-button .md-on {
	background-color: rgba(255, 64, 129, 0.87);
}

md-radio-button.md-checked .md-off {
	border-color: rgba(255, 64, 129, 0.87);
}

md-radio-button.md-checked .md-ink-ripple {
	color: rgba(255, 64, 129, 0.87);
}

md-radio-button .md-container .md-ripple {
	color: rgb(216, 27, 96);
}

md-radio-group.md-focused:not (:empty ) .md-checked .md-container:before
	{
	background-color: rgba(255, 64, 129, 0.26);
}

md-select:not ([disabled] ):focus.md-accent .md-select-value {
	border-bottom-color: rgb(255, 64, 129);
}

md-select-menu md-option[selected].md-accent {
	color: rgb(233, 30, 99);
}

md-select-menu md-option[selected].md-accent:focus {
	color: rgb(216, 27, 96);
}

md-slider .md-track.md-track-fill {
	background-color: rgb(255, 64, 129);
}

md-slider .md-thumb:after {
	border-color: rgb(255, 64, 129);
	background-color: rgb(255, 64, 129);
}

md-slider .md-sign {
	background-color: rgb(255, 64, 129);
}

md-slider .md-sign:after {
	border-top-color: rgb(255, 64, 129);
}

md-slider .md-thumb-text {
	color: rgb(255, 255, 255);
}

.md-subheader.md-accent {
	color: rgb(255, 64, 129);
}

md-switch.md-checked .md-thumb {
	background-color: rgb(255, 64, 129);
}

md-switch.md-checked .md-bar {
	background-color: rgba(255, 64, 129, 0.5);
}

md-switch.md-checked.md-focused .md-thumb:before {
	background-color: rgba(255, 64, 129, 0.26);
}

md-tabs md-ink-bar {
	color: rgb(255, 64, 129);
	background: rgb(255, 64, 129);
}

md-tabs .md-tab .md-ripple-container {
	color: rgb(248, 187, 208);
}

md-tabs.md-accent>md-tabs-wrapper {
	background-color: rgb(255, 64, 129);
}

md-tabs.md-accent>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ) {
	color: rgb(248, 187, 208);
}

md-tabs.md-accent>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-active, md-tabs.md-accent>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	color: rgb(255, 255, 255);
}

md-tabs.md-accent>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	background: rgba(255, 255, 255, 0.1);
}

md-tabs.md-accent>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-ink-bar
	{
	color: rgba(57, 73, 171, 1);
	background: rgba(57, 73, 171, 1);
}

md-toolbar.md-accent>md-tabs>md-tabs-wrapper {
	background-color: rgb(255, 64, 129);
}

md-toolbar.md-accent>md-tabs>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ) {
	color: rgb(248, 187, 208);
}

md-toolbar.md-accent>md-tabs>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-active, md-toolbar.md-accent>md-tabs>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	color: rgb(255, 255, 255);
}

md-toolbar.md-accent>md-tabs>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	background: rgba(255, 255, 255, 0.1);
}

md-toolbar.md-accent>md-tabs>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-ink-bar
	{
	color: rgba(57, 73, 171, 1);
	background: rgba(57, 73, 171, 1);
}

md-toast .md-button.md-highlight.md-accent {
	color: rgb(255, 64, 129);
}

md-toolbar.md-accent {
	background-color: rgb(255, 64, 129);
	color: rgb(255, 255, 255);
}
</style>
<style type="text/css">
md-checkbox.md-hue-1 .md-ripple {
	color: rgb(216, 27, 96);
}

md-checkbox.md-hue-1.md-checked.md-focused .md-container:before {
	background-color: rgba(255, 128, 171, 0.26);
}

md-checkbox.md-hue-1.md-checked .md-icon {
	background-color: rgba(255, 128, 171, 0.87);
}

a.md-button.md-hue-1.md-fab, .md-button.md-hue-1.md-fab {
	border-radius: 50%;
	background-color: rgb(255, 128, 171);
	color: rgba(0, 0, 0, 0.87);
}

a.md-button.md-hue-1.md-fab md-icon, .md-button.md-hue-1.md-fab md-icon
	{
	color: rgba(0, 0, 0, 0.87);
}

a.md-button.md-hue-1.md-fab:not ([disabled] ):hover, .md-button.md-hue-1.md-fab:not
	([disabled] ):hover {
	background-color: rgb(255, 128, 171);
}

a.md-button.md-hue-1.md-fab:not ([disabled] ).md-focused, .md-button.md-hue-1.md-fab:not
	([disabled] ).md-focused {
	background-color: rgb(197, 17, 98);
}

a.md-button.md-hue-1.md-fab, .md-button.md-hue-1.md-fab {
	border-radius: 50%;
	background-color: rgb(255, 128, 171);
	color: rgba(0, 0, 0, 0.87);
}

a.md-button.md-hue-1.md-fab:not ([disabled] ) .md-icon, .md-button.md-hue-1.md-fab:not
	([disabled] ) .md-icon {
	color: rgba(0, 0, 0, 0.87);
}

a.md-button.md-hue-1.md-fab:not ([disabled] ):hover, .md-button.md-hue-1.md-fab:not
	([disabled] ):hover {
	background-color: rgb(255, 128, 171);
}

a.md-button.md-hue-1.md-fab:not ([disabled] ).md-focused, .md-button.md-hue-1.md-fab:not
	([disabled] ).md-focused {
	background-color: rgb(197, 17, 98);
}

a.md-button.md-hue-1.md-accent, .md-button.md-hue-1.md-accent {
	color: rgb(255, 128, 171);
}

a.md-button.md-hue-1.md-accent.md-raised, a.md-button.md-hue-1.md-accent.md-fab,
	.md-button.md-hue-1.md-accent.md-raised, .md-button.md-hue-1.md-accent.md-fab
	{
	color: rgba(0, 0, 0, 0.87);
	background-color: rgb(255, 128, 171);
}

a.md-button.md-hue-1.md-accent.md-raised:not ([disabled] ) md-icon, a.md-button.md-hue-1.md-accent.md-fab:not
	([disabled] ) md-icon, .md-button.md-hue-1.md-accent.md-raised:not ([disabled]
	) md-icon, .md-button.md-hue-1.md-accent.md-fab:not ([disabled] ) md-icon
	{
	color: rgba(0, 0, 0, 0.87);
}

a.md-button.md-hue-1.md-accent.md-raised:not ([disabled] ):hover, a.md-button.md-hue-1.md-accent.md-fab:not
	([disabled] ):hover, .md-button.md-hue-1.md-accent.md-raised:not ([disabled]
	):hover, .md-button.md-hue-1.md-accent.md-fab:not ([disabled] ):hover {
	background-color: rgb(255, 128, 171);
}

a.md-button.md-hue-1.md-accent.md-raised:not ([disabled] ).md-focused, a.md-button.md-hue-1.md-accent.md-fab:not
	([disabled] ).md-focused, .md-button.md-hue-1.md-accent.md-raised:not ([disabled]
	).md-focused, .md-button.md-hue-1.md-accent.md-fab:not ([disabled] ).md-focused
	{
	background-color: rgb(194, 24, 91);
}

a.md-button.md-hue-1.md-accent:not ([disabled] ) md-icon, .md-button.md-hue-1.md-accent:not
	([disabled] ) md-icon {
	color: rgb(255, 128, 171);
}

a.md-button.md-hue-1[disabled], a.md-button.md-hue-1.md-raised[disabled],
	a.md-button.md-hue-1.md-fab[disabled], a.md-button.md-hue-1.md-accent[disabled],
	a.md-button.md-hue-1.md-warn[disabled], .md-button.md-hue-1[disabled],
	.md-button.md-hue-1.md-raised[disabled], .md-button.md-hue-1.md-fab[disabled],
	.md-button.md-hue-1.md-accent[disabled], .md-button.md-hue-1.md-warn[disabled]
	{
	color: rgba(0, 0, 0, 0.26);
	cursor: not-allowed;
}

a.md-button.md-hue-1[disabled] md-icon, a.md-button.md-hue-1.md-raised[disabled] md-icon,
	a.md-button.md-hue-1.md-fab[disabled] md-icon, a.md-button.md-hue-1.md-accent[disabled] md-icon,
	a.md-button.md-hue-1.md-warn[disabled] md-icon, .md-button.md-hue-1[disabled] md-icon,
	.md-button.md-hue-1.md-raised[disabled] md-icon, .md-button.md-hue-1.md-fab[disabled] md-icon,
	.md-button.md-hue-1.md-accent[disabled] md-icon, .md-button.md-hue-1.md-warn[disabled] md-icon
	{
	color: rgba(0, 0, 0, 0.26);
}

md-icon.md-hue-1.md-accent {
	color: rgb(255, 128, 171);
}

md-input-container.md-hue-1:not (.md-input-invalid ).md-input-focused.md-accent .md-input
	{
	border-color: rgb(233, 30, 99);
}

md-input-container.md-hue-1:not (.md-input-invalid ).md-input-focused.md-accent label
	{
	color: rgb(233, 30, 99);
}

md-list.md-hue-1 md-list-item>md-icon.md-highlight.md-accent {
	color: rgb(255, 128, 171);
}

md-progress-circular.md-hue-1.md-accent .md-inner .md-gap {
	border-top-color: rgb(255, 128, 171);
	border-bottom-color: rgb(255, 128, 171);
}

md-progress-circular.md-hue-1.md-accent .md-inner .md-left .md-half-circle,
	md-progress-circular.md-hue-1.md-accent .md-inner .md-right .md-half-circle
	{
	border-top-color: rgb(255, 128, 171);
}

md-progress-circular.md-hue-1.md-accent .md-inner .md-right .md-half-circle
	{
	border-right-color: rgb(255, 128, 171);
}

md-progress-circular.md-hue-1.md-accent .md-inner .md-left .md-half-circle
	{
	border-left-color: rgb(255, 128, 171);
}

md-progress-linear.md-hue-1.md-accent .md-container {
	background-color: rgb(248, 187, 208);
}

md-progress-linear.md-hue-1.md-accent .md-bar {
	background-color: rgb(255, 128, 171);
}

md-progress-linear.md-hue-1[md-mode=buffer].md-accent .md-bar1 {
	background-color: rgb(248, 187, 208);
}

md-progress-linear.md-hue-1[md-mode=buffer].md-accent .md-dashed:before
	{
	background: radial-gradient(rgb(248, 187, 208) 0%, rgb(248, 187, 208)
		16%, transparent 42%);
}

md-radio-button.md-hue-1 .md-on {
	background-color: rgba(255, 128, 171, 0.87);
}

md-radio-button.md-hue-1.md-checked .md-off {
	border-color: rgba(255, 128, 171, 0.87);
}

md-radio-button.md-hue-1.md-checked .md-ink-ripple {
	color: rgba(255, 128, 171, 0.87);
}

md-radio-button.md-hue-1 .md-container .md-ripple {
	color: rgb(216, 27, 96);
}

md-radio-group.md-hue-1.md-focused:not (:empty ) .md-checked .md-container:before
	{
	background-color: rgba(255, 128, 171, 0.26);
}

md-select.md-hue-1:not ([disabled] ):focus.md-accent .md-select-value {
	border-bottom-color: rgb(255, 128, 171);
}

md-select-menu.md-hue-1 md-option[selected].md-accent {
	color: rgb(233, 30, 99);
}

md-select-menu.md-hue-1 md-option[selected].md-accent:focus {
	color: rgb(216, 27, 96);
}

md-slider.md-hue-1 .md-track.md-track-fill {
	background-color: rgb(255, 128, 171);
}

md-slider.md-hue-1 .md-thumb:after {
	border-color: rgb(255, 128, 171);
	background-color: rgb(255, 128, 171);
}

md-slider.md-hue-1 .md-sign {
	background-color: rgb(255, 128, 171);
}

md-slider.md-hue-1 .md-sign:after {
	border-top-color: rgb(255, 128, 171);
}

md-slider.md-hue-1 .md-thumb-text {
	color: rgba(0, 0, 0, 0.87);
}

.md-subheader.md-hue-1.md-accent {
	color: rgb(255, 128, 171);
}

md-switch.md-hue-1.md-checked .md-thumb {
	background-color: rgb(255, 128, 171);
}

md-switch.md-hue-1.md-checked .md-bar {
	background-color: rgba(255, 128, 171, 0.5);
}

md-switch.md-hue-1.md-checked.md-focused .md-thumb:before {
	background-color: rgba(255, 128, 171, 0.26);
}

md-tabs.md-hue-1 md-ink-bar {
	color: rgb(255, 128, 171);
	background: rgb(255, 128, 171);
}

md-tabs.md-hue-1 .md-tab .md-ripple-container {
	color: rgb(248, 187, 208);
}

md-tabs.md-hue-1.md-accent>md-tabs-wrapper {
	background-color: rgb(255, 128, 171);
}

md-tabs.md-hue-1.md-accent>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ) {
	color: rgb(248, 187, 208);
}

md-tabs.md-hue-1.md-accent>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-active, md-tabs.md-hue-1.md-accent>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	color: rgba(0, 0, 0, 0.87);
}

md-tabs.md-hue-1.md-accent>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	background: rgba(0, 0, 0, 0.1);
}

md-tabs.md-hue-1.md-accent>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-ink-bar
	{
	color: rgba(57, 73, 171, 1);
	background: rgba(57, 73, 171, 1);
}

md-toolbar.md-accent>md-tabs.md-hue-1>md-tabs-wrapper {
	background-color: rgb(255, 128, 171);
}

md-toolbar.md-accent>md-tabs.md-hue-1>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ) {
	color: rgb(248, 187, 208);
}

md-toolbar.md-accent>md-tabs.md-hue-1>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-active, md-toolbar.md-accent>md-tabs.md-hue-1>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	color: rgba(0, 0, 0, 0.87);
}

md-toolbar.md-accent>md-tabs.md-hue-1>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	background: rgba(0, 0, 0, 0.1);
}

md-toolbar.md-accent>md-tabs.md-hue-1>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-ink-bar
	{
	color: rgba(57, 73, 171, 1);
	background: rgba(57, 73, 171, 1);
}

md-toast.md-hue-1 .md-button.md-highlight.md-accent {
	color: rgb(255, 64, 129);
}

md-toolbar.md-hue-1.md-accent {
	background-color: rgb(255, 128, 171);
	color: rgba(0, 0, 0, 0.87);
}
</style>
<style type="text/css">
md-checkbox.md-hue-2 .md-ripple {
	color: rgb(216, 27, 96);
}

md-checkbox.md-hue-2.md-checked.md-focused .md-container:before {
	background-color: rgba(245, 0, 87, 0.26);
}

md-checkbox.md-hue-2.md-checked .md-icon {
	background-color: rgba(245, 0, 87, 0.87);
}

a.md-button.md-hue-2.md-fab, .md-button.md-hue-2.md-fab {
	border-radius: 50%;
	background-color: rgb(245, 0, 87);
	color: rgb(255, 255, 255);
}

a.md-button.md-hue-2.md-fab md-icon, .md-button.md-hue-2.md-fab md-icon
	{
	color: rgb(255, 255, 255);
}

a.md-button.md-hue-2.md-fab:not ([disabled] ):hover, .md-button.md-hue-2.md-fab:not
	([disabled] ):hover {
	background-color: rgb(245, 0, 87);
}

a.md-button.md-hue-2.md-fab:not ([disabled] ).md-focused, .md-button.md-hue-2.md-fab:not
	([disabled] ).md-focused {
	background-color: rgb(197, 17, 98);
}

a.md-button.md-hue-2.md-fab, .md-button.md-hue-2.md-fab {
	border-radius: 50%;
	background-color: rgb(245, 0, 87);
	color: rgb(255, 255, 255);
}

a.md-button.md-hue-2.md-fab:not ([disabled] ) .md-icon, .md-button.md-hue-2.md-fab:not
	([disabled] ) .md-icon {
	color: rgb(255, 255, 255);
}

a.md-button.md-hue-2.md-fab:not ([disabled] ):hover, .md-button.md-hue-2.md-fab:not
	([disabled] ):hover {
	background-color: rgb(245, 0, 87);
}

a.md-button.md-hue-2.md-fab:not ([disabled] ).md-focused, .md-button.md-hue-2.md-fab:not
	([disabled] ).md-focused {
	background-color: rgb(197, 17, 98);
}

a.md-button.md-hue-2.md-accent, .md-button.md-hue-2.md-accent {
	color: rgb(245, 0, 87);
}

a.md-button.md-hue-2.md-accent.md-raised, a.md-button.md-hue-2.md-accent.md-fab,
	.md-button.md-hue-2.md-accent.md-raised, .md-button.md-hue-2.md-accent.md-fab
	{
	color: rgb(255, 255, 255);
	background-color: rgb(245, 0, 87);
}

a.md-button.md-hue-2.md-accent.md-raised:not ([disabled] ) md-icon, a.md-button.md-hue-2.md-accent.md-fab:not
	([disabled] ) md-icon, .md-button.md-hue-2.md-accent.md-raised:not ([disabled]
	) md-icon, .md-button.md-hue-2.md-accent.md-fab:not ([disabled] ) md-icon
	{
	color: rgb(255, 255, 255);
}

a.md-button.md-hue-2.md-accent.md-raised:not ([disabled] ):hover, a.md-button.md-hue-2.md-accent.md-fab:not
	([disabled] ):hover, .md-button.md-hue-2.md-accent.md-raised:not ([disabled]
	):hover, .md-button.md-hue-2.md-accent.md-fab:not ([disabled] ):hover {
	background-color: rgb(245, 0, 87);
}

a.md-button.md-hue-2.md-accent.md-raised:not ([disabled] ).md-focused, a.md-button.md-hue-2.md-accent.md-fab:not
	([disabled] ).md-focused, .md-button.md-hue-2.md-accent.md-raised:not ([disabled]
	).md-focused, .md-button.md-hue-2.md-accent.md-fab:not ([disabled] ).md-focused
	{
	background-color: rgb(194, 24, 91);
}

a.md-button.md-hue-2.md-accent:not ([disabled] ) md-icon, .md-button.md-hue-2.md-accent:not
	([disabled] ) md-icon {
	color: rgb(245, 0, 87);
}

a.md-button.md-hue-2[disabled], a.md-button.md-hue-2.md-raised[disabled],
	a.md-button.md-hue-2.md-fab[disabled], a.md-button.md-hue-2.md-accent[disabled],
	a.md-button.md-hue-2.md-warn[disabled], .md-button.md-hue-2[disabled],
	.md-button.md-hue-2.md-raised[disabled], .md-button.md-hue-2.md-fab[disabled],
	.md-button.md-hue-2.md-accent[disabled], .md-button.md-hue-2.md-warn[disabled]
	{
	color: rgba(0, 0, 0, 0.26);
	cursor: not-allowed;
}

a.md-button.md-hue-2[disabled] md-icon, a.md-button.md-hue-2.md-raised[disabled] md-icon,
	a.md-button.md-hue-2.md-fab[disabled] md-icon, a.md-button.md-hue-2.md-accent[disabled] md-icon,
	a.md-button.md-hue-2.md-warn[disabled] md-icon, .md-button.md-hue-2[disabled] md-icon,
	.md-button.md-hue-2.md-raised[disabled] md-icon, .md-button.md-hue-2.md-fab[disabled] md-icon,
	.md-button.md-hue-2.md-accent[disabled] md-icon, .md-button.md-hue-2.md-warn[disabled] md-icon
	{
	color: rgba(0, 0, 0, 0.26);
}

md-icon.md-hue-2.md-accent {
	color: rgb(245, 0, 87);
}

md-input-container.md-hue-2:not (.md-input-invalid ).md-input-focused.md-accent .md-input
	{
	border-color: rgb(233, 30, 99);
}

md-input-container.md-hue-2:not (.md-input-invalid ).md-input-focused.md-accent label
	{
	color: rgb(233, 30, 99);
}

md-list.md-hue-2 md-list-item>md-icon.md-highlight.md-accent {
	color: rgb(245, 0, 87);
}

md-progress-circular.md-hue-2.md-accent .md-inner .md-gap {
	border-top-color: rgb(245, 0, 87);
	border-bottom-color: rgb(245, 0, 87);
}

md-progress-circular.md-hue-2.md-accent .md-inner .md-left .md-half-circle,
	md-progress-circular.md-hue-2.md-accent .md-inner .md-right .md-half-circle
	{
	border-top-color: rgb(245, 0, 87);
}

md-progress-circular.md-hue-2.md-accent .md-inner .md-right .md-half-circle
	{
	border-right-color: rgb(245, 0, 87);
}

md-progress-circular.md-hue-2.md-accent .md-inner .md-left .md-half-circle
	{
	border-left-color: rgb(245, 0, 87);
}

md-progress-linear.md-hue-2.md-accent .md-container {
	background-color: rgb(248, 187, 208);
}

md-progress-linear.md-hue-2.md-accent .md-bar {
	background-color: rgb(245, 0, 87);
}

md-progress-linear.md-hue-2[md-mode=buffer].md-accent .md-bar1 {
	background-color: rgb(248, 187, 208);
}

md-progress-linear.md-hue-2[md-mode=buffer].md-accent .md-dashed:before
	{
	background: radial-gradient(rgb(248, 187, 208) 0%, rgb(248, 187, 208)
		16%, transparent 42%);
}

md-radio-button.md-hue-2 .md-on {
	background-color: rgba(245, 0, 87, 0.87);
}

md-radio-button.md-hue-2.md-checked .md-off {
	border-color: rgba(245, 0, 87, 0.87);
}

md-radio-button.md-hue-2.md-checked .md-ink-ripple {
	color: rgba(245, 0, 87, 0.87);
}

md-radio-button.md-hue-2 .md-container .md-ripple {
	color: rgb(216, 27, 96);
}

md-radio-group.md-hue-2.md-focused:not (:empty ) .md-checked .md-container:before
	{
	background-color: rgba(245, 0, 87, 0.26);
}

md-select.md-hue-2:not ([disabled] ):focus.md-accent .md-select-value {
	border-bottom-color: rgb(245, 0, 87);
}

md-select-menu.md-hue-2 md-option[selected].md-accent {
	color: rgb(233, 30, 99);
}

md-select-menu.md-hue-2 md-option[selected].md-accent:focus {
	color: rgb(216, 27, 96);
}

md-slider.md-hue-2 .md-track.md-track-fill {
	background-color: rgb(245, 0, 87);
}

md-slider.md-hue-2 .md-thumb:after {
	border-color: rgb(245, 0, 87);
	background-color: rgb(245, 0, 87);
}

md-slider.md-hue-2 .md-sign {
	background-color: rgb(245, 0, 87);
}

md-slider.md-hue-2 .md-sign:after {
	border-top-color: rgb(245, 0, 87);
}

md-slider.md-hue-2 .md-thumb-text {
	color: rgb(255, 255, 255);
}

.md-subheader.md-hue-2.md-accent {
	color: rgb(245, 0, 87);
}

md-switch.md-hue-2.md-checked .md-thumb {
	background-color: rgb(245, 0, 87);
}

md-switch.md-hue-2.md-checked .md-bar {
	background-color: rgba(245, 0, 87, 0.5);
}

md-switch.md-hue-2.md-checked.md-focused .md-thumb:before {
	background-color: rgba(245, 0, 87, 0.26);
}

md-tabs.md-hue-2 md-ink-bar {
	color: rgb(245, 0, 87);
	background: rgb(245, 0, 87);
}

md-tabs.md-hue-2 .md-tab .md-ripple-container {
	color: rgb(248, 187, 208);
}

md-tabs.md-hue-2.md-accent>md-tabs-wrapper {
	background-color: rgb(245, 0, 87);
}

md-tabs.md-hue-2.md-accent>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ) {
	color: rgb(248, 187, 208);
}

md-tabs.md-hue-2.md-accent>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-active, md-tabs.md-hue-2.md-accent>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	color: rgb(255, 255, 255);
}

md-tabs.md-hue-2.md-accent>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	background: rgba(255, 255, 255, 0.1);
}

md-tabs.md-hue-2.md-accent>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-ink-bar
	{
	color: rgba(57, 73, 171, 1);
	background: rgba(57, 73, 171, 1);
}

md-toolbar.md-accent>md-tabs.md-hue-2>md-tabs-wrapper {
	background-color: rgb(245, 0, 87);
}

md-toolbar.md-accent>md-tabs.md-hue-2>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ) {
	color: rgb(248, 187, 208);
}

md-toolbar.md-accent>md-tabs.md-hue-2>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-active, md-toolbar.md-accent>md-tabs.md-hue-2>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	color: rgb(255, 255, 255);
}

md-toolbar.md-accent>md-tabs.md-hue-2>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	background: rgba(255, 255, 255, 0.1);
}

md-toolbar.md-accent>md-tabs.md-hue-2>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-ink-bar
	{
	color: rgba(57, 73, 171, 1);
	background: rgba(57, 73, 171, 1);
}

md-toast.md-hue-2 .md-button.md-highlight.md-accent {
	color: rgb(255, 64, 129);
}

md-toolbar.md-hue-2.md-accent {
	background-color: rgb(245, 0, 87);
	color: rgb(255, 255, 255);
}
</style>
<style type="text/css">
md-checkbox.md-hue-3 .md-ripple {
	color: rgb(216, 27, 96);
}

md-checkbox.md-hue-3.md-checked.md-focused .md-container:before {
	background-color: rgba(197, 17, 98, 0.26);
}

md-checkbox.md-hue-3.md-checked .md-icon {
	background-color: rgba(197, 17, 98, 0.87);
}

a.md-button.md-hue-3.md-fab, .md-button.md-hue-3.md-fab {
	border-radius: 50%;
	background-color: rgb(197, 17, 98);
	color: rgb(255, 255, 255);
}

a.md-button.md-hue-3.md-fab md-icon, .md-button.md-hue-3.md-fab md-icon
	{
	color: rgb(255, 255, 255);
}

a.md-button.md-hue-3.md-fab:not ([disabled] ):hover, .md-button.md-hue-3.md-fab:not
	([disabled] ):hover {
	background-color: rgb(197, 17, 98);
}

a.md-button.md-hue-3.md-fab:not ([disabled] ).md-focused, .md-button.md-hue-3.md-fab:not
	([disabled] ).md-focused {
	background-color: rgb(197, 17, 98);
}

a.md-button.md-hue-3.md-fab, .md-button.md-hue-3.md-fab {
	border-radius: 50%;
	background-color: rgb(197, 17, 98);
	color: rgb(255, 255, 255);
}

a.md-button.md-hue-3.md-fab:not ([disabled] ) .md-icon, .md-button.md-hue-3.md-fab:not
	([disabled] ) .md-icon {
	color: rgb(255, 255, 255);
}

a.md-button.md-hue-3.md-fab:not ([disabled] ):hover, .md-button.md-hue-3.md-fab:not
	([disabled] ):hover {
	background-color: rgb(197, 17, 98);
}

a.md-button.md-hue-3.md-fab:not ([disabled] ).md-focused, .md-button.md-hue-3.md-fab:not
	([disabled] ).md-focused {
	background-color: rgb(197, 17, 98);
}

a.md-button.md-hue-3.md-accent, .md-button.md-hue-3.md-accent {
	color: rgb(197, 17, 98);
}

a.md-button.md-hue-3.md-accent.md-raised, a.md-button.md-hue-3.md-accent.md-fab,
	.md-button.md-hue-3.md-accent.md-raised, .md-button.md-hue-3.md-accent.md-fab
	{
	color: rgb(255, 255, 255);
	background-color: rgb(197, 17, 98);
}

a.md-button.md-hue-3.md-accent.md-raised:not ([disabled] ) md-icon, a.md-button.md-hue-3.md-accent.md-fab:not
	([disabled] ) md-icon, .md-button.md-hue-3.md-accent.md-raised:not ([disabled]
	) md-icon, .md-button.md-hue-3.md-accent.md-fab:not ([disabled] ) md-icon
	{
	color: rgb(255, 255, 255);
}

a.md-button.md-hue-3.md-accent.md-raised:not ([disabled] ):hover, a.md-button.md-hue-3.md-accent.md-fab:not
	([disabled] ):hover, .md-button.md-hue-3.md-accent.md-raised:not ([disabled]
	):hover, .md-button.md-hue-3.md-accent.md-fab:not ([disabled] ):hover {
	background-color: rgb(197, 17, 98);
}

a.md-button.md-hue-3.md-accent.md-raised:not ([disabled] ).md-focused, a.md-button.md-hue-3.md-accent.md-fab:not
	([disabled] ).md-focused, .md-button.md-hue-3.md-accent.md-raised:not ([disabled]
	).md-focused, .md-button.md-hue-3.md-accent.md-fab:not ([disabled] ).md-focused
	{
	background-color: rgb(194, 24, 91);
}

a.md-button.md-hue-3.md-accent:not ([disabled] ) md-icon, .md-button.md-hue-3.md-accent:not
	([disabled] ) md-icon {
	color: rgb(197, 17, 98);
}

a.md-button.md-hue-3[disabled], a.md-button.md-hue-3.md-raised[disabled],
	a.md-button.md-hue-3.md-fab[disabled], a.md-button.md-hue-3.md-accent[disabled],
	a.md-button.md-hue-3.md-warn[disabled], .md-button.md-hue-3[disabled],
	.md-button.md-hue-3.md-raised[disabled], .md-button.md-hue-3.md-fab[disabled],
	.md-button.md-hue-3.md-accent[disabled], .md-button.md-hue-3.md-warn[disabled]
	{
	color: rgba(0, 0, 0, 0.26);
	cursor: not-allowed;
}

a.md-button.md-hue-3[disabled] md-icon, a.md-button.md-hue-3.md-raised[disabled] md-icon,
	a.md-button.md-hue-3.md-fab[disabled] md-icon, a.md-button.md-hue-3.md-accent[disabled] md-icon,
	a.md-button.md-hue-3.md-warn[disabled] md-icon, .md-button.md-hue-3[disabled] md-icon,
	.md-button.md-hue-3.md-raised[disabled] md-icon, .md-button.md-hue-3.md-fab[disabled] md-icon,
	.md-button.md-hue-3.md-accent[disabled] md-icon, .md-button.md-hue-3.md-warn[disabled] md-icon
	{
	color: rgba(0, 0, 0, 0.26);
}

md-icon.md-hue-3.md-accent {
	color: rgb(197, 17, 98);
}

md-input-container.md-hue-3:not (.md-input-invalid ).md-input-focused.md-accent .md-input
	{
	border-color: rgb(233, 30, 99);
}

md-input-container.md-hue-3:not (.md-input-invalid ).md-input-focused.md-accent label
	{
	color: rgb(233, 30, 99);
}

md-list.md-hue-3 md-list-item>md-icon.md-highlight.md-accent {
	color: rgb(197, 17, 98);
}

md-progress-circular.md-hue-3.md-accent .md-inner .md-gap {
	border-top-color: rgb(197, 17, 98);
	border-bottom-color: rgb(197, 17, 98);
}

md-progress-circular.md-hue-3.md-accent .md-inner .md-left .md-half-circle,
	md-progress-circular.md-hue-3.md-accent .md-inner .md-right .md-half-circle
	{
	border-top-color: rgb(197, 17, 98);
}

md-progress-circular.md-hue-3.md-accent .md-inner .md-right .md-half-circle
	{
	border-right-color: rgb(197, 17, 98);
}

md-progress-circular.md-hue-3.md-accent .md-inner .md-left .md-half-circle
	{
	border-left-color: rgb(197, 17, 98);
}

md-progress-linear.md-hue-3.md-accent .md-container {
	background-color: rgb(248, 187, 208);
}

md-progress-linear.md-hue-3.md-accent .md-bar {
	background-color: rgb(197, 17, 98);
}

md-progress-linear.md-hue-3[md-mode=buffer].md-accent .md-bar1 {
	background-color: rgb(248, 187, 208);
}

md-progress-linear.md-hue-3[md-mode=buffer].md-accent .md-dashed:before
	{
	background: radial-gradient(rgb(248, 187, 208) 0%, rgb(248, 187, 208)
		16%, transparent 42%);
}

md-radio-button.md-hue-3 .md-on {
	background-color: rgba(197, 17, 98, 0.87);
}

md-radio-button.md-hue-3.md-checked .md-off {
	border-color: rgba(197, 17, 98, 0.87);
}

md-radio-button.md-hue-3.md-checked .md-ink-ripple {
	color: rgba(197, 17, 98, 0.87);
}

md-radio-button.md-hue-3 .md-container .md-ripple {
	color: rgb(216, 27, 96);
}

md-radio-group.md-hue-3.md-focused:not (:empty ) .md-checked .md-container:before
	{
	background-color: rgba(197, 17, 98, 0.26);
}

md-select.md-hue-3:not ([disabled] ):focus.md-accent .md-select-value {
	border-bottom-color: rgb(197, 17, 98);
}

md-select-menu.md-hue-3 md-option[selected].md-accent {
	color: rgb(233, 30, 99);
}

md-select-menu.md-hue-3 md-option[selected].md-accent:focus {
	color: rgb(216, 27, 96);
}

md-slider.md-hue-3 .md-track.md-track-fill {
	background-color: rgb(197, 17, 98);
}

md-slider.md-hue-3 .md-thumb:after {
	border-color: rgb(197, 17, 98);
	background-color: rgb(197, 17, 98);
}

md-slider.md-hue-3 .md-sign {
	background-color: rgb(197, 17, 98);
}

md-slider.md-hue-3 .md-sign:after {
	border-top-color: rgb(197, 17, 98);
}

md-slider.md-hue-3 .md-thumb-text {
	color: rgb(255, 255, 255);
}

.md-subheader.md-hue-3.md-accent {
	color: rgb(197, 17, 98);
}

md-switch.md-hue-3.md-checked .md-thumb {
	background-color: rgb(197, 17, 98);
}

md-switch.md-hue-3.md-checked .md-bar {
	background-color: rgba(197, 17, 98, 0.5);
}

md-switch.md-hue-3.md-checked.md-focused .md-thumb:before {
	background-color: rgba(197, 17, 98, 0.26);
}

md-tabs.md-hue-3 md-ink-bar {
	color: rgb(197, 17, 98);
	background: rgb(197, 17, 98);
}

md-tabs.md-hue-3 .md-tab .md-ripple-container {
	color: rgb(248, 187, 208);
}

md-tabs.md-hue-3.md-accent>md-tabs-wrapper {
	background-color: rgb(197, 17, 98);
}

md-tabs.md-hue-3.md-accent>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ) {
	color: rgb(248, 187, 208);
}

md-tabs.md-hue-3.md-accent>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-active, md-tabs.md-hue-3.md-accent>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	color: rgb(255, 255, 255);
}

md-tabs.md-hue-3.md-accent>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	background: rgba(255, 255, 255, 0.1);
}

md-tabs.md-hue-3.md-accent>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-ink-bar
	{
	color: rgba(57, 73, 171, 1);
	background: rgba(57, 73, 171, 1);
}

md-toolbar.md-accent>md-tabs.md-hue-3>md-tabs-wrapper {
	background-color: rgb(197, 17, 98);
}

md-toolbar.md-accent>md-tabs.md-hue-3>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ) {
	color: rgb(248, 187, 208);
}

md-toolbar.md-accent>md-tabs.md-hue-3>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-active, md-toolbar.md-accent>md-tabs.md-hue-3>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	color: rgb(255, 255, 255);
}

md-toolbar.md-accent>md-tabs.md-hue-3>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	background: rgba(255, 255, 255, 0.1);
}

md-toolbar.md-accent>md-tabs.md-hue-3>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-ink-bar
	{
	color: rgba(57, 73, 171, 1);
	background: rgba(57, 73, 171, 1);
}

md-toast.md-hue-3 .md-button.md-highlight.md-accent {
	color: rgb(255, 64, 129);
}

md-toolbar.md-hue-3.md-accent {
	background-color: rgb(197, 17, 98);
	color: rgb(255, 255, 255);
}
</style>
<style type="text/css">
md-checkbox:not ([disabled] ).md-warn .md-ripple {
	color: rgb(229, 57, 53);
}

md-checkbox:not ([disabled] ).md-warn .md-icon {
	border-color: rgba(0, 0, 0, 0.54);
}

md-checkbox:not ([disabled] ).md-warn.md-checked .md-icon {
	background-color: rgba(244, 67, 54, 0.87);
}

md-checkbox:not ([disabled] ).md-warn.md-checked.md-focused:not ([disabled]
	) .md-container:before {
	background-color: rgba(244, 67, 54, 0.26);
}

md-checkbox:not ([disabled] ).md-warn.md-checked .md-icon:after {
	border-color: rgb(238, 238, 238);
}

a.md-button.md-warn, .md-button.md-warn {
	color: rgb(244, 67, 54);
}

a.md-button.md-warn.md-raised, a.md-button.md-warn.md-fab, .md-button.md-warn.md-raised,
	.md-button.md-warn.md-fab {
	color: rgb(255, 255, 255);
	background-color: rgb(244, 67, 54);
}

a.md-button.md-warn.md-raised:not ([disabled] ) md-icon, a.md-button.md-warn.md-fab:not
	([disabled] ) md-icon, .md-button.md-warn.md-raised:not ([disabled] ) md-icon,
	.md-button.md-warn.md-fab:not ([disabled] ) md-icon {
	color: rgb(255, 255, 255);
}

a.md-button.md-warn.md-raised:not ([disabled] ):hover, a.md-button.md-warn.md-fab:not
	([disabled] ):hover, .md-button.md-warn.md-raised:not ([disabled] ):hover,
	.md-button.md-warn.md-fab:not ([disabled] ):hover {
	background-color: rgb(244, 67, 54);
}

a.md-button.md-warn.md-raised:not ([disabled] ).md-focused, a.md-button.md-warn.md-fab:not
	([disabled] ).md-focused, .md-button.md-warn.md-raised:not ([disabled]
	).md-focused, .md-button.md-warn.md-fab:not ([disabled] ).md-focused {
	background-color: rgb(211, 47, 47);
}

a.md-button.md-warn:not ([disabled] ) md-icon, .md-button.md-warn:not ([disabled]
	) md-icon {
	color: rgb(244, 67, 54);
}

md-icon.md-warn {
	color: rgb(244, 67, 54);
}

md-input-container ng-messages, md-input-container [ng-message],
	md-input-container [data-ng-message], md-input-container [x-ng-message]
	{
	color: rgb(244, 67, 54);
}

md-input-container:not (.md-input-invalid ).md-input-focused.md-warn .md-input
	{
	border-color: rgb(244, 67, 54);
}

md-input-container:not (.md-input-invalid ).md-input-focused.md-warn label
	{
	color: rgb(244, 67, 54);
}

md-input-container.md-input-invalid .md-input {
	border-color: rgb(244, 67, 54);
}

md-input-container.md-input-invalid.md-input-focused label {
	color: rgb(244, 67, 54);
}

md-input-container.md-input-invalid ng-message, md-input-container.md-input-invalid data-ng-message,
	md-input-container.md-input-invalid x-ng-message, md-input-container.md-input-invalid [ng-message],
	md-input-container.md-input-invalid [data-ng-message],
	md-input-container.md-input-invalid [x-ng-message], md-input-container.md-input-invalid .md-char-counter
	{
	color: rgb(244, 67, 54);
}

md-progress-circular.md-warn .md-inner .md-gap {
	border-top-color: rgb(244, 67, 54);
	border-bottom-color: rgb(244, 67, 54);
}

md-progress-circular.md-warn .md-inner .md-left .md-half-circle,
	md-progress-circular.md-warn .md-inner .md-right .md-half-circle {
	border-top-color: rgb(244, 67, 54);
}

md-progress-circular.md-warn .md-inner .md-right .md-half-circle {
	border-right-color: rgb(244, 67, 54);
}

md-progress-circular.md-warn .md-inner .md-left .md-half-circle {
	border-left-color: rgb(244, 67, 54);
}

md-progress-linear.md-warn .md-container {
	background-color: rgb(255, 205, 210);
}

md-progress-linear.md-warn .md-bar {
	background-color: rgb(244, 67, 54);
}

md-progress-linear[md-mode=buffer].md-warn .md-bar1 {
	background-color: rgb(255, 205, 210);
}

md-progress-linear[md-mode=buffer].md-warn .md-dashed:before {
	background: radial-gradient(rgb(255, 205, 210) 0%, rgb(255, 205, 210)
		16%, transparent 42%);
}

md-radio-group:not ([disabled] ) .md-warn .md-on, md-radio-group:not ([disabled]
	).md-warn .md-on, md-radio-button:not ([disabled] ) .md-warn .md-on,
	md-radio-button:not ([disabled] ).md-warn .md-on {
	background-color: rgba(244, 67, 54, 0.87);
}

md-radio-group:not ([disabled] ) .md-warn .md-checked .md-off,
	md-radio-group:not ([disabled] ) .md-warn.md-checked .md-off,
	md-radio-group:not ([disabled] ).md-warn .md-checked .md-off,
	md-radio-group:not ([disabled] ).md-warn.md-checked .md-off,
	md-radio-button:not ([disabled] ) .md-warn .md-checked .md-off,
	md-radio-button:not ([disabled] ) .md-warn.md-checked .md-off,
	md-radio-button:not ([disabled] ).md-warn .md-checked .md-off,
	md-radio-button:not ([disabled] ).md-warn.md-checked .md-off {
	border-color: rgba(244, 67, 54, 0.87);
}

md-radio-group:not ([disabled] ) .md-warn .md-checked .md-ink-ripple,
	md-radio-group:not ([disabled] ) .md-warn.md-checked .md-ink-ripple,
	md-radio-group:not ([disabled] ).md-warn .md-checked .md-ink-ripple,
	md-radio-group:not ([disabled] ).md-warn.md-checked .md-ink-ripple,
	md-radio-button:not ([disabled] ) .md-warn .md-checked .md-ink-ripple,
	md-radio-button:not ([disabled] ) .md-warn.md-checked .md-ink-ripple,
	md-radio-button:not ([disabled] ).md-warn .md-checked .md-ink-ripple,
	md-radio-button:not ([disabled] ).md-warn.md-checked .md-ink-ripple {
	color: rgba(244, 67, 54, 0.87);
}

md-radio-group:not ([disabled] ) .md-warn .md-container .md-ripple,
	md-radio-group:not ([disabled] ).md-warn .md-container .md-ripple,
	md-radio-button:not ([disabled] ) .md-warn .md-container .md-ripple,
	md-radio-button:not ([disabled] ).md-warn .md-container .md-ripple {
	color: rgb(229, 57, 53);
}

md-select.ng-invalid.ng-dirty .md-select-label {
	color: rgb(244, 67, 54) !important;
	border-bottom-color: rgb(244, 67, 54) !important;
}

md-select:not ([disabled] ):focus.md-warn .md-select-value {
	border-bottom-color: rgb(244, 67, 54);
}

md-slider.md-warn .md-track.md-track-fill {
	background-color: rgb(244, 67, 54);
}

md-slider.md-warn .md-thumb:after {
	border-color: rgb(244, 67, 54);
	background-color: rgb(244, 67, 54);
}

md-slider.md-warn .md-sign {
	background-color: rgb(244, 67, 54);
}

md-slider.md-warn .md-sign:after {
	border-top-color: rgb(244, 67, 54);
}

md-slider.md-warn .md-thumb-text {
	color: rgb(255, 255, 255);
}

.md-subheader.md-warn {
	color: rgb(244, 67, 54);
}

md-switch.md-checked.md-warn .md-thumb {
	background-color: rgb(244, 67, 54);
}

md-switch.md-checked.md-warn .md-bar {
	background-color: rgba(244, 67, 54, 0.5);
}

md-switch.md-checked.md-warn.md-focused .md-thumb:before {
	background-color: rgba(244, 67, 54, 0.26);
}

md-tabs.md-warn>md-tabs-wrapper {
	background-color: rgb(244, 67, 54);
}

md-tabs.md-warn>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ) {
	color: rgb(255, 205, 210);
}

md-tabs.md-warn>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-active, md-tabs.md-warn>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	color: rgb(255, 255, 255);
}

md-tabs.md-warn>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	background: rgba(255, 255, 255, 0.1);
}

md-toolbar.md-warn>md-tabs>md-tabs-wrapper {
	background-color: rgb(244, 67, 54);
}

md-toolbar.md-warn>md-tabs>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ) {
	color: rgb(255, 205, 210);
}

md-toolbar.md-warn>md-tabs>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-active, md-toolbar.md-warn>md-tabs>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	color: rgb(255, 255, 255);
}

md-toolbar.md-warn>md-tabs>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	background: rgba(255, 255, 255, 0.1);
}

md-toast .md-button.md-highlight.md-warn {
	color: rgb(255, 82, 82);
}

md-toolbar.md-warn {
	background-color: rgb(244, 67, 54);
	color: rgb(255, 255, 255);
}
</style>
<style type="text/css">
md-checkbox.md-hue-1:not ([disabled] ).md-warn .md-ripple {
	color: rgb(229, 57, 53);
}

md-checkbox.md-hue-1:not ([disabled] ).md-warn .md-icon {
	border-color: rgba(0, 0, 0, 0.54);
}

md-checkbox.md-hue-1:not ([disabled] ).md-warn.md-checked .md-icon {
	background-color: rgba(229, 115, 115, 0.87);
}

md-checkbox.md-hue-1:not ([disabled] ).md-warn.md-checked.md-focused:not
	([disabled] ) .md-container:before {
	background-color: rgba(229, 115, 115, 0.26);
}

md-checkbox.md-hue-1:not ([disabled] ).md-warn.md-checked .md-icon:after
	{
	border-color: rgb(238, 238, 238);
}

a.md-button.md-hue-1.md-warn, .md-button.md-hue-1.md-warn {
	color: rgb(229, 115, 115);
}

a.md-button.md-hue-1.md-warn.md-raised, a.md-button.md-hue-1.md-warn.md-fab,
	.md-button.md-hue-1.md-warn.md-raised, .md-button.md-hue-1.md-warn.md-fab
	{
	color: rgba(0, 0, 0, 0.87);
	background-color: rgb(229, 115, 115);
}

a.md-button.md-hue-1.md-warn.md-raised:not ([disabled] ) md-icon, a.md-button.md-hue-1.md-warn.md-fab:not
	([disabled] ) md-icon, .md-button.md-hue-1.md-warn.md-raised:not ([disabled]
	) md-icon, .md-button.md-hue-1.md-warn.md-fab:not ([disabled] ) md-icon
	{
	color: rgba(0, 0, 0, 0.87);
}

a.md-button.md-hue-1.md-warn.md-raised:not ([disabled] ):hover, a.md-button.md-hue-1.md-warn.md-fab:not
	([disabled] ):hover, .md-button.md-hue-1.md-warn.md-raised:not ([disabled]
	):hover, .md-button.md-hue-1.md-warn.md-fab:not ([disabled] ):hover {
	background-color: rgb(229, 115, 115);
}

a.md-button.md-hue-1.md-warn.md-raised:not ([disabled] ).md-focused, a.md-button.md-hue-1.md-warn.md-fab:not
	([disabled] ).md-focused, .md-button.md-hue-1.md-warn.md-raised:not ([disabled]
	).md-focused, .md-button.md-hue-1.md-warn.md-fab:not ([disabled] ).md-focused
	{
	background-color: rgb(211, 47, 47);
}

a.md-button.md-hue-1.md-warn:not ([disabled] ) md-icon, .md-button.md-hue-1.md-warn:not
	([disabled] ) md-icon {
	color: rgb(229, 115, 115);
}

md-icon.md-hue-1.md-warn {
	color: rgb(229, 115, 115);
}

md-input-container.md-hue-1 ng-messages, md-input-container.md-hue-1 [ng-message],
	md-input-container.md-hue-1 [data-ng-message], md-input-container.md-hue-1 [x-ng-message]
	{
	color: rgb(244, 67, 54);
}

md-input-container.md-hue-1:not (.md-input-invalid ).md-input-focused.md-warn .md-input
	{
	border-color: rgb(244, 67, 54);
}

md-input-container.md-hue-1:not (.md-input-invalid ).md-input-focused.md-warn label
	{
	color: rgb(244, 67, 54);
}

md-input-container.md-hue-1.md-input-invalid .md-input {
	border-color: rgb(244, 67, 54);
}

md-input-container.md-hue-1.md-input-invalid.md-input-focused label {
	color: rgb(244, 67, 54);
}

md-input-container.md-hue-1.md-input-invalid ng-message,
	md-input-container.md-hue-1.md-input-invalid data-ng-message,
	md-input-container.md-hue-1.md-input-invalid x-ng-message,
	md-input-container.md-hue-1.md-input-invalid [ng-message],
	md-input-container.md-hue-1.md-input-invalid [data-ng-message],
	md-input-container.md-hue-1.md-input-invalid [x-ng-message],
	md-input-container.md-hue-1.md-input-invalid .md-char-counter {
	color: rgb(244, 67, 54);
}

md-progress-circular.md-hue-1.md-warn .md-inner .md-gap {
	border-top-color: rgb(229, 115, 115);
	border-bottom-color: rgb(229, 115, 115);
}

md-progress-circular.md-hue-1.md-warn .md-inner .md-left .md-half-circle,
	md-progress-circular.md-hue-1.md-warn .md-inner .md-right .md-half-circle
	{
	border-top-color: rgb(229, 115, 115);
}

md-progress-circular.md-hue-1.md-warn .md-inner .md-right .md-half-circle
	{
	border-right-color: rgb(229, 115, 115);
}

md-progress-circular.md-hue-1.md-warn .md-inner .md-left .md-half-circle
	{
	border-left-color: rgb(229, 115, 115);
}

md-progress-linear.md-hue-1.md-warn .md-container {
	background-color: rgb(255, 205, 210);
}

md-progress-linear.md-hue-1.md-warn .md-bar {
	background-color: rgb(229, 115, 115);
}

md-progress-linear.md-hue-1[md-mode=buffer].md-warn .md-bar1 {
	background-color: rgb(255, 205, 210);
}

md-progress-linear.md-hue-1[md-mode=buffer].md-warn .md-dashed:before {
	background: radial-gradient(rgb(255, 205, 210) 0%, rgb(255, 205, 210)
		16%, transparent 42%);
}

md-radio-group.md-hue-1:not ([disabled] ) .md-warn .md-on,
	md-radio-group.md-hue-1:not ([disabled] ).md-warn .md-on,
	md-radio-button.md-hue-1:not ([disabled] ) .md-warn .md-on,
	md-radio-button.md-hue-1:not ([disabled] ).md-warn .md-on {
	background-color: rgba(229, 115, 115, 0.87);
}

md-radio-group.md-hue-1:not ([disabled] ) .md-warn .md-checked .md-off,
	md-radio-group.md-hue-1:not ([disabled] ) .md-warn.md-checked .md-off,
	md-radio-group.md-hue-1:not ([disabled] ).md-warn .md-checked .md-off,
	md-radio-group.md-hue-1:not ([disabled] ).md-warn.md-checked .md-off,
	md-radio-button.md-hue-1:not ([disabled] ) .md-warn .md-checked .md-off,
	md-radio-button.md-hue-1:not ([disabled] ) .md-warn.md-checked .md-off,
	md-radio-button.md-hue-1:not ([disabled] ).md-warn .md-checked .md-off,
	md-radio-button.md-hue-1:not ([disabled] ).md-warn.md-checked .md-off {
	border-color: rgba(229, 115, 115, 0.87);
}

md-radio-group.md-hue-1:not ([disabled] ) .md-warn .md-checked .md-ink-ripple,
	md-radio-group.md-hue-1:not ([disabled] ) .md-warn.md-checked .md-ink-ripple,
	md-radio-group.md-hue-1:not ([disabled] ).md-warn .md-checked .md-ink-ripple,
	md-radio-group.md-hue-1:not ([disabled] ).md-warn.md-checked .md-ink-ripple,
	md-radio-button.md-hue-1:not ([disabled] ) .md-warn .md-checked .md-ink-ripple,
	md-radio-button.md-hue-1:not ([disabled] ) .md-warn.md-checked .md-ink-ripple,
	md-radio-button.md-hue-1:not ([disabled] ).md-warn .md-checked .md-ink-ripple,
	md-radio-button.md-hue-1:not ([disabled] ).md-warn.md-checked .md-ink-ripple
	{
	color: rgba(229, 115, 115, 0.87);
}

md-radio-group.md-hue-1:not ([disabled] ) .md-warn .md-container .md-ripple,
	md-radio-group.md-hue-1:not ([disabled] ).md-warn .md-container .md-ripple,
	md-radio-button.md-hue-1:not ([disabled] ) .md-warn .md-container .md-ripple,
	md-radio-button.md-hue-1:not ([disabled] ).md-warn .md-container .md-ripple
	{
	color: rgb(229, 57, 53);
}

md-select.md-hue-1.ng-invalid.ng-dirty .md-select-label {
	color: rgb(244, 67, 54) !important;
	border-bottom-color: rgb(244, 67, 54) !important;
}

md-select.md-hue-1:not ([disabled] ):focus.md-warn .md-select-value {
	border-bottom-color: rgb(229, 115, 115);
}

md-slider.md-hue-1.md-warn .md-track.md-track-fill {
	background-color: rgb(229, 115, 115);
}

md-slider.md-hue-1.md-warn .md-thumb:after {
	border-color: rgb(229, 115, 115);
	background-color: rgb(229, 115, 115);
}

md-slider.md-hue-1.md-warn .md-sign {
	background-color: rgb(229, 115, 115);
}

md-slider.md-hue-1.md-warn .md-sign:after {
	border-top-color: rgb(229, 115, 115);
}

md-slider.md-hue-1.md-warn .md-thumb-text {
	color: rgba(0, 0, 0, 0.87);
}

.md-subheader.md-hue-1.md-warn {
	color: rgb(229, 115, 115);
}

md-switch.md-hue-1.md-checked.md-warn .md-thumb {
	background-color: rgb(229, 115, 115);
}

md-switch.md-hue-1.md-checked.md-warn .md-bar {
	background-color: rgba(229, 115, 115, 0.5);
}

md-switch.md-hue-1.md-checked.md-warn.md-focused .md-thumb:before {
	background-color: rgba(229, 115, 115, 0.26);
}

md-tabs.md-hue-1.md-warn>md-tabs-wrapper {
	background-color: rgb(229, 115, 115);
}

md-tabs.md-hue-1.md-warn>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ) {
	color: rgb(255, 205, 210);
}

md-tabs.md-hue-1.md-warn>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-active, md-tabs.md-hue-1.md-warn>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	color: rgba(0, 0, 0, 0.87);
}

md-tabs.md-hue-1.md-warn>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	background: rgba(0, 0, 0, 0.1);
}

md-toolbar.md-warn>md-tabs.md-hue-1>md-tabs-wrapper {
	background-color: rgb(229, 115, 115);
}

md-toolbar.md-warn>md-tabs.md-hue-1>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ) {
	color: rgb(255, 205, 210);
}

md-toolbar.md-warn>md-tabs.md-hue-1>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-active, md-toolbar.md-warn>md-tabs.md-hue-1>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	color: rgba(0, 0, 0, 0.87);
}

md-toolbar.md-warn>md-tabs.md-hue-1>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	background: rgba(0, 0, 0, 0.1);
}

md-toast.md-hue-1 .md-button.md-highlight.md-warn {
	color: rgb(255, 82, 82);
}

md-toolbar.md-hue-1.md-warn {
	background-color: rgb(229, 115, 115);
	color: rgba(0, 0, 0, 0.87);
}
</style>
<style type="text/css">
md-checkbox.md-hue-2:not ([disabled] ).md-warn .md-ripple {
	color: rgb(229, 57, 53);
}

md-checkbox.md-hue-2:not ([disabled] ).md-warn .md-icon {
	border-color: rgba(0, 0, 0, 0.54);
}

md-checkbox.md-hue-2:not ([disabled] ).md-warn.md-checked .md-icon {
	background-color: rgba(198, 40, 40, 0.87);
}

md-checkbox.md-hue-2:not ([disabled] ).md-warn.md-checked.md-focused:not
	([disabled] ) .md-container:before {
	background-color: rgba(198, 40, 40, 0.26);
}

md-checkbox.md-hue-2:not ([disabled] ).md-warn.md-checked .md-icon:after
	{
	border-color: rgb(238, 238, 238);
}

a.md-button.md-hue-2.md-warn, .md-button.md-hue-2.md-warn {
	color: rgb(198, 40, 40);
}

a.md-button.md-hue-2.md-warn.md-raised, a.md-button.md-hue-2.md-warn.md-fab,
	.md-button.md-hue-2.md-warn.md-raised, .md-button.md-hue-2.md-warn.md-fab
	{
	color: rgba(255, 255, 255, 0.87);
	background-color: rgb(198, 40, 40);
}

a.md-button.md-hue-2.md-warn.md-raised:not ([disabled] ) md-icon, a.md-button.md-hue-2.md-warn.md-fab:not
	([disabled] ) md-icon, .md-button.md-hue-2.md-warn.md-raised:not ([disabled]
	) md-icon, .md-button.md-hue-2.md-warn.md-fab:not ([disabled] ) md-icon
	{
	color: rgba(255, 255, 255, 0.87);
}

a.md-button.md-hue-2.md-warn.md-raised:not ([disabled] ):hover, a.md-button.md-hue-2.md-warn.md-fab:not
	([disabled] ):hover, .md-button.md-hue-2.md-warn.md-raised:not ([disabled]
	):hover, .md-button.md-hue-2.md-warn.md-fab:not ([disabled] ):hover {
	background-color: rgb(198, 40, 40);
}

a.md-button.md-hue-2.md-warn.md-raised:not ([disabled] ).md-focused, a.md-button.md-hue-2.md-warn.md-fab:not
	([disabled] ).md-focused, .md-button.md-hue-2.md-warn.md-raised:not ([disabled]
	).md-focused, .md-button.md-hue-2.md-warn.md-fab:not ([disabled] ).md-focused
	{
	background-color: rgb(211, 47, 47);
}

a.md-button.md-hue-2.md-warn:not ([disabled] ) md-icon, .md-button.md-hue-2.md-warn:not
	([disabled] ) md-icon {
	color: rgb(198, 40, 40);
}

md-icon.md-hue-2.md-warn {
	color: rgb(198, 40, 40);
}

md-input-container.md-hue-2 ng-messages, md-input-container.md-hue-2 [ng-message],
	md-input-container.md-hue-2 [data-ng-message], md-input-container.md-hue-2 [x-ng-message]
	{
	color: rgb(244, 67, 54);
}

md-input-container.md-hue-2:not (.md-input-invalid ).md-input-focused.md-warn .md-input
	{
	border-color: rgb(244, 67, 54);
}

md-input-container.md-hue-2:not (.md-input-invalid ).md-input-focused.md-warn label
	{
	color: rgb(244, 67, 54);
}

md-input-container.md-hue-2.md-input-invalid .md-input {
	border-color: rgb(244, 67, 54);
}

md-input-container.md-hue-2.md-input-invalid.md-input-focused label {
	color: rgb(244, 67, 54);
}

md-input-container.md-hue-2.md-input-invalid ng-message,
	md-input-container.md-hue-2.md-input-invalid data-ng-message,
	md-input-container.md-hue-2.md-input-invalid x-ng-message,
	md-input-container.md-hue-2.md-input-invalid [ng-message],
	md-input-container.md-hue-2.md-input-invalid [data-ng-message],
	md-input-container.md-hue-2.md-input-invalid [x-ng-message],
	md-input-container.md-hue-2.md-input-invalid .md-char-counter {
	color: rgb(244, 67, 54);
}

md-progress-circular.md-hue-2.md-warn .md-inner .md-gap {
	border-top-color: rgb(198, 40, 40);
	border-bottom-color: rgb(198, 40, 40);
}

md-progress-circular.md-hue-2.md-warn .md-inner .md-left .md-half-circle,
	md-progress-circular.md-hue-2.md-warn .md-inner .md-right .md-half-circle
	{
	border-top-color: rgb(198, 40, 40);
}

md-progress-circular.md-hue-2.md-warn .md-inner .md-right .md-half-circle
	{
	border-right-color: rgb(198, 40, 40);
}

md-progress-circular.md-hue-2.md-warn .md-inner .md-left .md-half-circle
	{
	border-left-color: rgb(198, 40, 40);
}

md-progress-linear.md-hue-2.md-warn .md-container {
	background-color: rgb(255, 205, 210);
}

md-progress-linear.md-hue-2.md-warn .md-bar {
	background-color: rgb(198, 40, 40);
}

md-progress-linear.md-hue-2[md-mode=buffer].md-warn .md-bar1 {
	background-color: rgb(255, 205, 210);
}

md-progress-linear.md-hue-2[md-mode=buffer].md-warn .md-dashed:before {
	background: radial-gradient(rgb(255, 205, 210) 0%, rgb(255, 205, 210)
		16%, transparent 42%);
}

md-radio-group.md-hue-2:not ([disabled] ) .md-warn .md-on,
	md-radio-group.md-hue-2:not ([disabled] ).md-warn .md-on,
	md-radio-button.md-hue-2:not ([disabled] ) .md-warn .md-on,
	md-radio-button.md-hue-2:not ([disabled] ).md-warn .md-on {
	background-color: rgba(198, 40, 40, 0.87);
}

md-radio-group.md-hue-2:not ([disabled] ) .md-warn .md-checked .md-off,
	md-radio-group.md-hue-2:not ([disabled] ) .md-warn.md-checked .md-off,
	md-radio-group.md-hue-2:not ([disabled] ).md-warn .md-checked .md-off,
	md-radio-group.md-hue-2:not ([disabled] ).md-warn.md-checked .md-off,
	md-radio-button.md-hue-2:not ([disabled] ) .md-warn .md-checked .md-off,
	md-radio-button.md-hue-2:not ([disabled] ) .md-warn.md-checked .md-off,
	md-radio-button.md-hue-2:not ([disabled] ).md-warn .md-checked .md-off,
	md-radio-button.md-hue-2:not ([disabled] ).md-warn.md-checked .md-off {
	border-color: rgba(198, 40, 40, 0.87);
}

md-radio-group.md-hue-2:not ([disabled] ) .md-warn .md-checked .md-ink-ripple,
	md-radio-group.md-hue-2:not ([disabled] ) .md-warn.md-checked .md-ink-ripple,
	md-radio-group.md-hue-2:not ([disabled] ).md-warn .md-checked .md-ink-ripple,
	md-radio-group.md-hue-2:not ([disabled] ).md-warn.md-checked .md-ink-ripple,
	md-radio-button.md-hue-2:not ([disabled] ) .md-warn .md-checked .md-ink-ripple,
	md-radio-button.md-hue-2:not ([disabled] ) .md-warn.md-checked .md-ink-ripple,
	md-radio-button.md-hue-2:not ([disabled] ).md-warn .md-checked .md-ink-ripple,
	md-radio-button.md-hue-2:not ([disabled] ).md-warn.md-checked .md-ink-ripple
	{
	color: rgba(198, 40, 40, 0.87);
}

md-radio-group.md-hue-2:not ([disabled] ) .md-warn .md-container .md-ripple,
	md-radio-group.md-hue-2:not ([disabled] ).md-warn .md-container .md-ripple,
	md-radio-button.md-hue-2:not ([disabled] ) .md-warn .md-container .md-ripple,
	md-radio-button.md-hue-2:not ([disabled] ).md-warn .md-container .md-ripple
	{
	color: rgb(229, 57, 53);
}

md-select.md-hue-2.ng-invalid.ng-dirty .md-select-label {
	color: rgb(244, 67, 54) !important;
	border-bottom-color: rgb(244, 67, 54) !important;
}

md-select.md-hue-2:not ([disabled] ):focus.md-warn .md-select-value {
	border-bottom-color: rgb(198, 40, 40);
}

md-slider.md-hue-2.md-warn .md-track.md-track-fill {
	background-color: rgb(198, 40, 40);
}

md-slider.md-hue-2.md-warn .md-thumb:after {
	border-color: rgb(198, 40, 40);
	background-color: rgb(198, 40, 40);
}

md-slider.md-hue-2.md-warn .md-sign {
	background-color: rgb(198, 40, 40);
}

md-slider.md-hue-2.md-warn .md-sign:after {
	border-top-color: rgb(198, 40, 40);
}

md-slider.md-hue-2.md-warn .md-thumb-text {
	color: rgba(255, 255, 255, 0.87);
}

.md-subheader.md-hue-2.md-warn {
	color: rgb(198, 40, 40);
}

md-switch.md-hue-2.md-checked.md-warn .md-thumb {
	background-color: rgb(198, 40, 40);
}

md-switch.md-hue-2.md-checked.md-warn .md-bar {
	background-color: rgba(198, 40, 40, 0.5);
}

md-switch.md-hue-2.md-checked.md-warn.md-focused .md-thumb:before {
	background-color: rgba(198, 40, 40, 0.26);
}

md-tabs.md-hue-2.md-warn>md-tabs-wrapper {
	background-color: rgb(198, 40, 40);
}

md-tabs.md-hue-2.md-warn>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ) {
	color: rgb(255, 205, 210);
}

md-tabs.md-hue-2.md-warn>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-active, md-tabs.md-hue-2.md-warn>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	color: rgba(255, 255, 255, 0.87);
}

md-tabs.md-hue-2.md-warn>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	background: rgba(255, 255, 255, 0.1);
}

md-toolbar.md-warn>md-tabs.md-hue-2>md-tabs-wrapper {
	background-color: rgb(198, 40, 40);
}

md-toolbar.md-warn>md-tabs.md-hue-2>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ) {
	color: rgb(255, 205, 210);
}

md-toolbar.md-warn>md-tabs.md-hue-2>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-active, md-toolbar.md-warn>md-tabs.md-hue-2>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	color: rgba(255, 255, 255, 0.87);
}

md-toolbar.md-warn>md-tabs.md-hue-2>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	background: rgba(255, 255, 255, 0.1);
}

md-toast.md-hue-2 .md-button.md-highlight.md-warn {
	color: rgb(255, 82, 82);
}

md-toolbar.md-hue-2.md-warn {
	background-color: rgb(198, 40, 40);
	color: rgba(255, 255, 255, 0.87);
}
</style>
<style type="text/css">
md-checkbox.md-hue-3:not ([disabled] ).md-warn .md-ripple {
	color: rgb(229, 57, 53);
}

md-checkbox.md-hue-3:not ([disabled] ).md-warn .md-icon {
	border-color: rgba(0, 0, 0, 0.54);
}

md-checkbox.md-hue-3:not ([disabled] ).md-warn.md-checked .md-icon {
	background-color: rgba(255, 138, 128, 0.87);
}

md-checkbox.md-hue-3:not ([disabled] ).md-warn.md-checked.md-focused:not
	([disabled] ) .md-container:before {
	background-color: rgba(255, 138, 128, 0.26);
}

md-checkbox.md-hue-3:not ([disabled] ).md-warn.md-checked .md-icon:after
	{
	border-color: rgb(238, 238, 238);
}

a.md-button.md-hue-3.md-warn, .md-button.md-hue-3.md-warn {
	color: rgb(255, 138, 128);
}

a.md-button.md-hue-3.md-warn.md-raised, a.md-button.md-hue-3.md-warn.md-fab,
	.md-button.md-hue-3.md-warn.md-raised, .md-button.md-hue-3.md-warn.md-fab
	{
	color: rgba(0, 0, 0, 0.87);
	background-color: rgb(255, 138, 128);
}

a.md-button.md-hue-3.md-warn.md-raised:not ([disabled] ) md-icon, a.md-button.md-hue-3.md-warn.md-fab:not
	([disabled] ) md-icon, .md-button.md-hue-3.md-warn.md-raised:not ([disabled]
	) md-icon, .md-button.md-hue-3.md-warn.md-fab:not ([disabled] ) md-icon
	{
	color: rgba(0, 0, 0, 0.87);
}

a.md-button.md-hue-3.md-warn.md-raised:not ([disabled] ):hover, a.md-button.md-hue-3.md-warn.md-fab:not
	([disabled] ):hover, .md-button.md-hue-3.md-warn.md-raised:not ([disabled]
	):hover, .md-button.md-hue-3.md-warn.md-fab:not ([disabled] ):hover {
	background-color: rgb(255, 138, 128);
}

a.md-button.md-hue-3.md-warn.md-raised:not ([disabled] ).md-focused, a.md-button.md-hue-3.md-warn.md-fab:not
	([disabled] ).md-focused, .md-button.md-hue-3.md-warn.md-raised:not ([disabled]
	).md-focused, .md-button.md-hue-3.md-warn.md-fab:not ([disabled] ).md-focused
	{
	background-color: rgb(211, 47, 47);
}

a.md-button.md-hue-3.md-warn:not ([disabled] ) md-icon, .md-button.md-hue-3.md-warn:not
	([disabled] ) md-icon {
	color: rgb(255, 138, 128);
}

md-icon.md-hue-3.md-warn {
	color: rgb(255, 138, 128);
}

md-input-container.md-hue-3 ng-messages, md-input-container.md-hue-3 [ng-message],
	md-input-container.md-hue-3 [data-ng-message], md-input-container.md-hue-3 [x-ng-message]
	{
	color: rgb(244, 67, 54);
}

md-input-container.md-hue-3:not (.md-input-invalid ).md-input-focused.md-warn .md-input
	{
	border-color: rgb(244, 67, 54);
}

md-input-container.md-hue-3:not (.md-input-invalid ).md-input-focused.md-warn label
	{
	color: rgb(244, 67, 54);
}

md-input-container.md-hue-3.md-input-invalid .md-input {
	border-color: rgb(244, 67, 54);
}

md-input-container.md-hue-3.md-input-invalid.md-input-focused label {
	color: rgb(244, 67, 54);
}

md-input-container.md-hue-3.md-input-invalid ng-message,
	md-input-container.md-hue-3.md-input-invalid data-ng-message,
	md-input-container.md-hue-3.md-input-invalid x-ng-message,
	md-input-container.md-hue-3.md-input-invalid [ng-message],
	md-input-container.md-hue-3.md-input-invalid [data-ng-message],
	md-input-container.md-hue-3.md-input-invalid [x-ng-message],
	md-input-container.md-hue-3.md-input-invalid .md-char-counter {
	color: rgb(244, 67, 54);
}

md-progress-circular.md-hue-3.md-warn .md-inner .md-gap {
	border-top-color: rgb(255, 138, 128);
	border-bottom-color: rgb(255, 138, 128);
}

md-progress-circular.md-hue-3.md-warn .md-inner .md-left .md-half-circle,
	md-progress-circular.md-hue-3.md-warn .md-inner .md-right .md-half-circle
	{
	border-top-color: rgb(255, 138, 128);
}

md-progress-circular.md-hue-3.md-warn .md-inner .md-right .md-half-circle
	{
	border-right-color: rgb(255, 138, 128);
}

md-progress-circular.md-hue-3.md-warn .md-inner .md-left .md-half-circle
	{
	border-left-color: rgb(255, 138, 128);
}

md-progress-linear.md-hue-3.md-warn .md-container {
	background-color: rgb(255, 205, 210);
}

md-progress-linear.md-hue-3.md-warn .md-bar {
	background-color: rgb(255, 138, 128);
}

md-progress-linear.md-hue-3[md-mode=buffer].md-warn .md-bar1 {
	background-color: rgb(255, 205, 210);
}

md-progress-linear.md-hue-3[md-mode=buffer].md-warn .md-dashed:before {
	background: radial-gradient(rgb(255, 205, 210) 0%, rgb(255, 205, 210)
		16%, transparent 42%);
}

md-radio-group.md-hue-3:not ([disabled] ) .md-warn .md-on,
	md-radio-group.md-hue-3:not ([disabled] ).md-warn .md-on,
	md-radio-button.md-hue-3:not ([disabled] ) .md-warn .md-on,
	md-radio-button.md-hue-3:not ([disabled] ).md-warn .md-on {
	background-color: rgba(255, 138, 128, 0.87);
}

md-radio-group.md-hue-3:not ([disabled] ) .md-warn .md-checked .md-off,
	md-radio-group.md-hue-3:not ([disabled] ) .md-warn.md-checked .md-off,
	md-radio-group.md-hue-3:not ([disabled] ).md-warn .md-checked .md-off,
	md-radio-group.md-hue-3:not ([disabled] ).md-warn.md-checked .md-off,
	md-radio-button.md-hue-3:not ([disabled] ) .md-warn .md-checked .md-off,
	md-radio-button.md-hue-3:not ([disabled] ) .md-warn.md-checked .md-off,
	md-radio-button.md-hue-3:not ([disabled] ).md-warn .md-checked .md-off,
	md-radio-button.md-hue-3:not ([disabled] ).md-warn.md-checked .md-off {
	border-color: rgba(255, 138, 128, 0.87);
}

md-radio-group.md-hue-3:not ([disabled] ) .md-warn .md-checked .md-ink-ripple,
	md-radio-group.md-hue-3:not ([disabled] ) .md-warn.md-checked .md-ink-ripple,
	md-radio-group.md-hue-3:not ([disabled] ).md-warn .md-checked .md-ink-ripple,
	md-radio-group.md-hue-3:not ([disabled] ).md-warn.md-checked .md-ink-ripple,
	md-radio-button.md-hue-3:not ([disabled] ) .md-warn .md-checked .md-ink-ripple,
	md-radio-button.md-hue-3:not ([disabled] ) .md-warn.md-checked .md-ink-ripple,
	md-radio-button.md-hue-3:not ([disabled] ).md-warn .md-checked .md-ink-ripple,
	md-radio-button.md-hue-3:not ([disabled] ).md-warn.md-checked .md-ink-ripple
	{
	color: rgba(255, 138, 128, 0.87);
}

md-radio-group.md-hue-3:not ([disabled] ) .md-warn .md-container .md-ripple,
	md-radio-group.md-hue-3:not ([disabled] ).md-warn .md-container .md-ripple,
	md-radio-button.md-hue-3:not ([disabled] ) .md-warn .md-container .md-ripple,
	md-radio-button.md-hue-3:not ([disabled] ).md-warn .md-container .md-ripple
	{
	color: rgb(229, 57, 53);
}

md-select.md-hue-3.ng-invalid.ng-dirty .md-select-label {
	color: rgb(244, 67, 54) !important;
	border-bottom-color: rgb(244, 67, 54) !important;
}

md-select.md-hue-3:not ([disabled] ):focus.md-warn .md-select-value {
	border-bottom-color: rgb(255, 138, 128);
}

md-slider.md-hue-3.md-warn .md-track.md-track-fill {
	background-color: rgb(255, 138, 128);
}

md-slider.md-hue-3.md-warn .md-thumb:after {
	border-color: rgb(255, 138, 128);
	background-color: rgb(255, 138, 128);
}

md-slider.md-hue-3.md-warn .md-sign {
	background-color: rgb(255, 138, 128);
}

md-slider.md-hue-3.md-warn .md-sign:after {
	border-top-color: rgb(255, 138, 128);
}

md-slider.md-hue-3.md-warn .md-thumb-text {
	color: rgba(0, 0, 0, 0.87);
}

.md-subheader.md-hue-3.md-warn {
	color: rgb(255, 138, 128);
}

md-switch.md-hue-3.md-checked.md-warn .md-thumb {
	background-color: rgb(255, 138, 128);
}

md-switch.md-hue-3.md-checked.md-warn .md-bar {
	background-color: rgba(255, 138, 128, 0.5);
}

md-switch.md-hue-3.md-checked.md-warn.md-focused .md-thumb:before {
	background-color: rgba(255, 138, 128, 0.26);
}

md-tabs.md-hue-3.md-warn>md-tabs-wrapper {
	background-color: rgb(255, 138, 128);
}

md-tabs.md-hue-3.md-warn>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ) {
	color: rgb(255, 205, 210);
}

md-tabs.md-hue-3.md-warn>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-active, md-tabs.md-hue-3.md-warn>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	color: rgba(0, 0, 0, 0.87);
}

md-tabs.md-hue-3.md-warn>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	background: rgba(0, 0, 0, 0.1);
}

md-toolbar.md-warn>md-tabs.md-hue-3>md-tabs-wrapper {
	background-color: rgb(255, 138, 128);
}

md-toolbar.md-warn>md-tabs.md-hue-3>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ) {
	color: rgb(255, 205, 210);
}

md-toolbar.md-warn>md-tabs.md-hue-3>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-active, md-toolbar.md-warn>md-tabs.md-hue-3>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	color: rgba(0, 0, 0, 0.87);
}

md-toolbar.md-warn>md-tabs.md-hue-3>md-tabs-wrapper>md-tabs-canvas>md-pagination-wrapper>md-tab-item:not
	([disabled] ).md-focused {
	background: rgba(0, 0, 0, 0.1);
}

md-toast.md-hue-3 .md-button.md-highlight.md-warn {
	color: rgb(255, 82, 82);
}

md-toolbar.md-hue-3.md-warn {
	background-color: rgb(255, 138, 128);
	color: rgba(0, 0, 0, 0.87);
}
</style>
<style type="text/css">/* mixin definition ; sets LTR and RTL within the same style call */
md-autocomplete {
	background: rgb(250, 250, 250);
}

md-autocomplete[disabled] {
	background: rgb(245, 245, 245);
}

md-autocomplete button md-icon path {
	fill: rgb(117, 117, 117);
}

md-autocomplete button:after {
	background: rgba(117, 117, 117, 0.3);
}

.md-autocomplete-suggestions {
	background: rgb(250, 250, 250);
}

.md-autocomplete-suggestions li {
	color: rgb(33, 33, 33);
}

.md-autocomplete-suggestions li .highlight {
	color: rgb(117, 117, 117);
}

.md-autocomplete-suggestions li:hover, .md-autocomplete-suggestions li.selected
	{
	background: rgb(238, 238, 238);
}

md-bottom-sheet {
	background-color: rgb(250, 250, 250);
	border-top-color: rgb(224, 224, 224);
}

md-bottom-sheet .md-subheader {
	background-color: rgb(250, 250, 250);
}

md-backdrop {
	background-color: rgba(33, 33, 33, 0.0);
}

md-backdrop.md-opaque {
	background-color: rgba(33, 33, 33, 0.48);
}

md-backdrop.md-opaque.ng-enter {
	background-color: rgba(33, 33, 33, 0.0);
}

md-backdrop.md-opaque.ng-enter.md-opaque.ng-enter-active {
	background-color: rgba(33, 33, 33, 0.48);
}

md-backdrop.md-opaque.ng-leave.md-opaque.ng-leave-active {
	background-color: rgba(33, 33, 33, 0.0);
}

md-card {
	background-color: rgb(255, 255, 255);
	border-radius: 2px;
}

md-checkbox.md-checked .md-ripple {
	color: rgb(117, 117, 117);
}

md-checkbox.md-checked .md-icon:after {
	border-color: rgb(238, 238, 238);
}

md-checkbox[disabled].md-checked .md-icon {
	background-color: rgba(0, 0, 0, 0.26);
}

md-content {
	color: rgba(0, 0, 0, 0.87);
	background-color: rgb(255, 255, 255);
}

a.md-button:not ([disabled] ):hover, .md-button:not ([disabled] ):hover
	{
	background-color: rgba(158, 158, 158, 0.2);
}

a.md-button:not ([disabled] ).md-focused, .md-button:not ([disabled] ).md-focused
	{
	background-color: rgba(158, 158, 158, 0.2);
}

a.md-button:not ([disabled] ).md-icon-button:hover, .md-button:not ([disabled]
	).md-icon-button:hover {
	background-color: transparent;
}

a.md-button.md-raised, .md-button.md-raised {
	color: rgba(0, 0, 0, 0.87);
	background-color: rgb(250, 250, 250);
}

a.md-button.md-raised:not ([disabled] ) .md-icon, .md-button.md-raised:not
	([disabled] ) .md-icon {
	color: rgba(0, 0, 0, 0.87);
}

a.md-button.md-raised:not ([disabled] ):hover, .md-button.md-raised:not
	([disabled] ):hover {
	background-color: rgb(250, 250, 250);
}

a.md-button.md-raised:not ([disabled] ).md-focused, .md-button.md-raised:not
	([disabled] ).md-focused {
	background-color: rgb(238, 238, 238);
}

a.md-button.md-raised[disabled], a.md-button.md-fab[disabled],
	.md-button.md-raised[disabled], .md-button.md-fab[disabled] {
	background-color: rgba(0, 0, 0, 0.12);
}

a.md-button[disabled], .md-button[disabled] {
	background-color: transparent;
}

md-chips .md-chips {
	box-shadow: 0 1px rgb(224, 224, 224);
}

md-chips .md-chip {
	background: rgb(224, 224, 224);
	color: rgb(66, 66, 66);
}

md-chips md-chip-remove .md-button md-icon path {
	fill: rgb(158, 158, 158);
}

.md-contact-suggestion span.md-contact-email {
	color: rgb(189, 189, 189);
}

md-dialog {
	border-radius: 4px;
	background-color: rgb(255, 255, 255);
}

md-input-container .md-input[disabled], [disabled] md-input-container .md-input
	{
	border-bottom-color: transparent;
	color: rgba(0, 0, 0, 0.26);
	background-image: linear-gradient(to right, rgba(0, 0, 0, 0.26) 0%,
		rgba(0, 0, 0, 0.26) 33%, transparent 0%);
	background-image: -ms-linear-gradient(left, transparent 0%, rgba(0, 0, 0, 0.26)
		100%);
}

md-list .md-proxy-focus.md-focused div.md-no-style {
	background-color: rgb(245, 245, 245);
}

md-list md-list-item button {
	background-color: rgb(255, 255, 255);
}

md-list md-list-item button.md-button:not ([disabled] ):hover {
	background-color: rgb(255, 255, 255);
}

md-menu-content {
	background-color: rgb(255, 255, 255);
}

md-menu-content md-menu-divider {
	background-color: rgba(0, 0, 0, 0.12);
}

md-progress-circular {
	background-color: transparent;
}

md-select-menu md-option:focus:not ([selected] ) {
	background: rgb(238, 238, 238);
}

md-sidenav {
	background-color: rgb(255, 255, 255);
}

md-slider .md-track {
	background-color: rgba(0, 0, 0, 0.26);
}

md-slider .md-track-ticks {
	background-color: rgba(0, 0, 0, 0.12);
}

md-slider .md-focus-thumb {
	background-color: rgba(0, 0, 0, 0.54);
}

md-slider .md-disabled-thumb {
	border-color: rgb(255, 255, 255);
}

md-slider.md-min .md-thumb:after {
	background-color: rgb(255, 255, 255);
}

md-slider[disabled]:not (.md-min ) .md-thumb:after {
	background-color: rgba(0, 0, 0, 0.26);
}

.md-subheader {
	color: rgba(0, 0, 0, 0.54);
	background-color: rgb(255, 255, 255);
}

md-switch .md-thumb {
	background-color: rgb(250, 250, 250);
}

md-switch .md-bar {
	background-color: rgb(158, 158, 158);
}

md-switch[disabled] .md-thumb {
	background-color: rgb(189, 189, 189);
}

md-switch[disabled] .md-bar {
	background-color: rgba(0, 0, 0, 0.12);
}

md-tabs md-tabs-wrapper {
	background-color: transparent;
	border-color: rgba(0, 0, 0, 0.12);
}

md-toast {
	background-color: #323232;
	color: rgb(250, 250, 250);
}

md-toast .md-button {
	color: rgb(250, 250, 250);
}

md-tooltip {
	color: rgb(255, 255, 255);
}

md-tooltip .md-background {
	background-color: rgba(0, 0, 0, 0.54);
}
</style>
<style type="text/css">/* mixin definition ; sets LTR and RTL within the same style call */
md-autocomplete.md-hue-1 {
	background: rgb(250, 250, 250);
}

md-autocomplete.md-hue-1[disabled] {
	background: rgb(245, 245, 245);
}

md-autocomplete.md-hue-1 button md-icon path {
	fill: rgb(117, 117, 117);
}

md-autocomplete.md-hue-1 button:after {
	background: rgba(117, 117, 117, 0.3);
}

.md-autocomplete-suggestions.md-hue-1 {
	background: rgb(250, 250, 250);
}

.md-autocomplete-suggestions.md-hue-1 li {
	color: rgb(33, 33, 33);
}

.md-autocomplete-suggestions.md-hue-1 li .highlight {
	color: rgb(117, 117, 117);
}

.md-autocomplete-suggestions.md-hue-1 li:hover,
	.md-autocomplete-suggestions.md-hue-1 li.selected {
	background: rgb(238, 238, 238);
}

md-bottom-sheet.md-hue-1 {
	background-color: rgb(250, 250, 250);
	border-top-color: rgb(224, 224, 224);
}

md-bottom-sheet.md-hue-1 .md-subheader {
	background-color: rgb(250, 250, 250);
}

md-backdrop {
	background-color: rgba(33, 33, 33, 0.0);
}

md-backdrop.md-opaque.md-hue-1 {
	background-color: rgba(33, 33, 33, 0.48);
}

md-backdrop.md-opaque.md-hue-1.ng-enter {
	background-color: rgba(33, 33, 33, 0.0);
}

md-backdrop.md-opaque.md-hue-1.ng-enter.md-opaque.md-hue-1.ng-enter-active
	{
	background-color: rgba(33, 33, 33, 0.48);
}

md-backdrop.md-opaque.md-hue-1.ng-leave.md-opaque.md-hue-1.ng-leave-active
	{
	background-color: rgba(33, 33, 33, 0.0);
}

md-card.md-hue-1 {
	background-color: rgb(224, 224, 224);
	border-radius: 2px;
}

md-checkbox.md-hue-1.md-checked .md-ripple {
	color: rgb(117, 117, 117);
}

md-checkbox.md-hue-1.md-checked .md-icon:after {
	border-color: rgb(238, 238, 238);
}

md-checkbox.md-hue-1[disabled].md-checked .md-icon {
	background-color: rgba(0, 0, 0, 0.26);
}

md-content.md-hue-1 {
	color: rgba(0, 0, 0, 0.87);
	background-color: rgb(224, 224, 224);
}

a.md-button.md-hue-1:not ([disabled] ):hover, .md-button.md-hue-1:not ([disabled]
	):hover {
	background-color: rgba(158, 158, 158, 0.2);
}

a.md-button.md-hue-1:not ([disabled] ).md-focused, .md-button.md-hue-1:not
	([disabled] ).md-focused {
	background-color: rgba(158, 158, 158, 0.2);
}

a.md-button.md-hue-1:not ([disabled] ).md-icon-button:hover, .md-button.md-hue-1:not
	([disabled] ).md-icon-button:hover {
	background-color: transparent;
}

a.md-button.md-hue-1.md-raised, .md-button.md-hue-1.md-raised {
	color: rgba(0, 0, 0, 0.87);
	background-color: rgb(250, 250, 250);
}

a.md-button.md-hue-1.md-raised:not ([disabled] ) .md-icon, .md-button.md-hue-1.md-raised:not
	([disabled] ) .md-icon {
	color: rgba(0, 0, 0, 0.87);
}

a.md-button.md-hue-1.md-raised:not ([disabled] ):hover, .md-button.md-hue-1.md-raised:not
	([disabled] ):hover {
	background-color: rgb(250, 250, 250);
}

a.md-button.md-hue-1.md-raised:not ([disabled] ).md-focused, .md-button.md-hue-1.md-raised:not
	([disabled] ).md-focused {
	background-color: rgb(238, 238, 238);
}

a.md-button.md-hue-1.md-raised[disabled], a.md-button.md-hue-1.md-fab[disabled],
	.md-button.md-hue-1.md-raised[disabled], .md-button.md-hue-1.md-fab[disabled]
	{
	background-color: rgba(0, 0, 0, 0.12);
}

a.md-button.md-hue-1[disabled], .md-button.md-hue-1[disabled] {
	background-color: transparent;
}

md-chips.md-hue-1 .md-chips {
	box-shadow: 0 1px rgb(224, 224, 224);
}

md-chips.md-hue-1 .md-chip {
	background: rgb(224, 224, 224);
	color: rgb(66, 66, 66);
}

md-chips.md-hue-1 md-chip-remove .md-button md-icon path {
	fill: rgb(158, 158, 158);
}

.md-contact-suggestion span.md-contact-email {
	color: rgb(189, 189, 189);
}

md-dialog.md-hue-1 {
	border-radius: 4px;
	background-color: rgb(224, 224, 224);
}

md-input-container.md-hue-1 .md-input[disabled], [disabled] md-input-container.md-hue-1 .md-input
	{
	border-bottom-color: transparent;
	color: rgba(0, 0, 0, 0.26);
	background-image: linear-gradient(to right, rgba(0, 0, 0, 0.26) 0%,
		rgba(0, 0, 0, 0.26) 33%, transparent 0%);
	background-image: -ms-linear-gradient(left, transparent 0%, rgba(0, 0, 0, 0.26)
		100%);
}

md-list.md-hue-1 .md-proxy-focus.md-focused div.md-no-style {
	background-color: rgb(245, 245, 245);
}

md-list.md-hue-1 md-list-item button {
	background-color: rgb(224, 224, 224);
}

md-list.md-hue-1 md-list-item button.md-button:not ([disabled] ):hover {
	background-color: rgb(224, 224, 224);
}

md-menu-content.md-hue-1 {
	background-color: rgb(224, 224, 224);
}

md-menu-content.md-hue-1 md-menu-divider {
	background-color: rgba(0, 0, 0, 0.12);
}

md-progress-circular.md-hue-1 {
	background-color: transparent;
}

md-select-menu.md-hue-1 md-option:focus:not ([selected] ) {
	background: rgb(238, 238, 238);
}

md-sidenav.md-hue-1 {
	background-color: rgb(224, 224, 224);
}

md-slider.md-hue-1 .md-track {
	background-color: rgba(0, 0, 0, 0.26);
}

md-slider.md-hue-1 .md-track-ticks {
	background-color: rgba(0, 0, 0, 0.12);
}

md-slider.md-hue-1 .md-focus-thumb {
	background-color: rgba(0, 0, 0, 0.54);
}

md-slider.md-hue-1 .md-disabled-thumb {
	border-color: rgb(224, 224, 224);
}

md-slider.md-hue-1.md-min .md-thumb:after {
	background-color: rgb(224, 224, 224);
}

md-slider.md-hue-1[disabled]:not (.md-min ) .md-thumb:after {
	background-color: rgba(0, 0, 0, 0.26);
}

.md-subheader.md-hue-1 {
	color: rgba(0, 0, 0, 0.54);
	background-color: rgb(224, 224, 224);
}

md-switch.md-hue-1 .md-thumb {
	background-color: rgb(250, 250, 250);
}

md-switch.md-hue-1 .md-bar {
	background-color: rgb(158, 158, 158);
}

md-switch.md-hue-1[disabled] .md-thumb {
	background-color: rgb(189, 189, 189);
}

md-switch.md-hue-1[disabled] .md-bar {
	background-color: rgba(0, 0, 0, 0.12);
}

md-tabs.md-hue-1 md-tabs-wrapper {
	background-color: transparent;
	border-color: rgba(0, 0, 0, 0.12);
}

md-toast.md-hue-1 {
	background-color: #323232;
	color: rgb(250, 250, 250);
}

md-toast.md-hue-1 .md-button {
	color: rgb(250, 250, 250);
}

md-tooltip.md-hue-1 {
	color: rgb(255, 255, 255);
}

md-tooltip.md-hue-1 .md-background {
	background-color: rgba(0, 0, 0, 0.54);
}
</style>
<style type="text/css">/* mixin definition ; sets LTR and RTL within the same style call */
md-autocomplete.md-hue-2 {
	background: rgb(250, 250, 250);
}

md-autocomplete.md-hue-2[disabled] {
	background: rgb(245, 245, 245);
}

md-autocomplete.md-hue-2 button md-icon path {
	fill: rgb(117, 117, 117);
}

md-autocomplete.md-hue-2 button:after {
	background: rgba(117, 117, 117, 0.3);
}

.md-autocomplete-suggestions.md-hue-2 {
	background: rgb(250, 250, 250);
}

.md-autocomplete-suggestions.md-hue-2 li {
	color: rgb(33, 33, 33);
}

.md-autocomplete-suggestions.md-hue-2 li .highlight {
	color: rgb(117, 117, 117);
}

.md-autocomplete-suggestions.md-hue-2 li:hover,
	.md-autocomplete-suggestions.md-hue-2 li.selected {
	background: rgb(238, 238, 238);
}

md-bottom-sheet.md-hue-2 {
	background-color: rgb(250, 250, 250);
	border-top-color: rgb(224, 224, 224);
}

md-bottom-sheet.md-hue-2 .md-subheader {
	background-color: rgb(250, 250, 250);
}

md-backdrop {
	background-color: rgba(33, 33, 33, 0.0);
}

md-backdrop.md-opaque.md-hue-2 {
	background-color: rgba(33, 33, 33, 0.48);
}

md-backdrop.md-opaque.md-hue-2.ng-enter {
	background-color: rgba(33, 33, 33, 0.0);
}

md-backdrop.md-opaque.md-hue-2.ng-enter.md-opaque.md-hue-2.ng-enter-active
	{
	background-color: rgba(33, 33, 33, 0.48);
}

md-backdrop.md-opaque.md-hue-2.ng-leave.md-opaque.md-hue-2.ng-leave-active
	{
	background-color: rgba(33, 33, 33, 0.0);
}

md-card.md-hue-2 {
	background-color: rgb(66, 66, 66);
	border-radius: 2px;
}

md-checkbox.md-hue-2.md-checked .md-ripple {
	color: rgb(117, 117, 117);
}

md-checkbox.md-hue-2.md-checked .md-icon:after {
	border-color: rgb(238, 238, 238);
}

md-checkbox.md-hue-2[disabled].md-checked .md-icon {
	background-color: rgba(0, 0, 0, 0.26);
}

md-content.md-hue-2 {
	color: rgba(0, 0, 0, 0.87);
	background-color: rgb(66, 66, 66);
}

a.md-button.md-hue-2:not ([disabled] ):hover, .md-button.md-hue-2:not ([disabled]
	):hover {
	background-color: rgba(158, 158, 158, 0.2);
}

a.md-button.md-hue-2:not ([disabled] ).md-focused, .md-button.md-hue-2:not
	([disabled] ).md-focused {
	background-color: rgba(158, 158, 158, 0.2);
}

a.md-button.md-hue-2:not ([disabled] ).md-icon-button:hover, .md-button.md-hue-2:not
	([disabled] ).md-icon-button:hover {
	background-color: transparent;
}

a.md-button.md-hue-2.md-raised, .md-button.md-hue-2.md-raised {
	color: rgba(255, 255, 255, 0.87);
	background-color: rgb(250, 250, 250);
}

a.md-button.md-hue-2.md-raised:not ([disabled] ) .md-icon, .md-button.md-hue-2.md-raised:not
	([disabled] ) .md-icon {
	color: rgba(255, 255, 255, 0.87);
}

a.md-button.md-hue-2.md-raised:not ([disabled] ):hover, .md-button.md-hue-2.md-raised:not
	([disabled] ):hover {
	background-color: rgb(250, 250, 250);
}

a.md-button.md-hue-2.md-raised:not ([disabled] ).md-focused, .md-button.md-hue-2.md-raised:not
	([disabled] ).md-focused {
	background-color: rgb(238, 238, 238);
}

a.md-button.md-hue-2.md-raised[disabled], a.md-button.md-hue-2.md-fab[disabled],
	.md-button.md-hue-2.md-raised[disabled], .md-button.md-hue-2.md-fab[disabled]
	{
	background-color: rgba(0, 0, 0, 0.12);
}

a.md-button.md-hue-2[disabled], .md-button.md-hue-2[disabled] {
	background-color: transparent;
}

md-chips.md-hue-2 .md-chips {
	box-shadow: 0 1px rgb(224, 224, 224);
}

md-chips.md-hue-2 .md-chip {
	background: rgb(224, 224, 224);
	color: rgb(66, 66, 66);
}

md-chips.md-hue-2 md-chip-remove .md-button md-icon path {
	fill: rgb(158, 158, 158);
}

.md-contact-suggestion span.md-contact-email {
	color: rgb(189, 189, 189);
}

md-dialog.md-hue-2 {
	border-radius: 4px;
	background-color: rgb(66, 66, 66);
}

md-input-container.md-hue-2 .md-input[disabled], [disabled] md-input-container.md-hue-2 .md-input
	{
	border-bottom-color: transparent;
	color: rgba(0, 0, 0, 0.26);
	background-image: linear-gradient(to right, rgba(0, 0, 0, 0.26) 0%,
		rgba(0, 0, 0, 0.26) 33%, transparent 0%);
	background-image: -ms-linear-gradient(left, transparent 0%, rgba(0, 0, 0, 0.26)
		100%);
}

md-list.md-hue-2 .md-proxy-focus.md-focused div.md-no-style {
	background-color: rgb(245, 245, 245);
}

md-list.md-hue-2 md-list-item button {
	background-color: rgb(66, 66, 66);
}

md-list.md-hue-2 md-list-item button.md-button:not ([disabled] ):hover {
	background-color: rgb(66, 66, 66);
}

md-menu-content.md-hue-2 {
	background-color: rgb(66, 66, 66);
}

md-menu-content.md-hue-2 md-menu-divider {
	background-color: rgba(0, 0, 0, 0.12);
}

md-progress-circular.md-hue-2 {
	background-color: transparent;
}

md-select-menu.md-hue-2 md-option:focus:not ([selected] ) {
	background: rgb(238, 238, 238);
}

md-sidenav.md-hue-2 {
	background-color: rgb(66, 66, 66);
}

md-slider.md-hue-2 .md-track {
	background-color: rgba(0, 0, 0, 0.26);
}

md-slider.md-hue-2 .md-track-ticks {
	background-color: rgba(0, 0, 0, 0.12);
}

md-slider.md-hue-2 .md-focus-thumb {
	background-color: rgba(0, 0, 0, 0.54);
}

md-slider.md-hue-2 .md-disabled-thumb {
	border-color: rgb(66, 66, 66);
}

md-slider.md-hue-2.md-min .md-thumb:after {
	background-color: rgb(66, 66, 66);
}

md-slider.md-hue-2[disabled]:not (.md-min ) .md-thumb:after {
	background-color: rgba(0, 0, 0, 0.26);
}

.md-subheader.md-hue-2 {
	color: rgba(0, 0, 0, 0.54);
	background-color: rgb(66, 66, 66);
}

md-switch.md-hue-2 .md-thumb {
	background-color: rgb(250, 250, 250);
}

md-switch.md-hue-2 .md-bar {
	background-color: rgb(158, 158, 158);
}

md-switch.md-hue-2[disabled] .md-thumb {
	background-color: rgb(189, 189, 189);
}

md-switch.md-hue-2[disabled] .md-bar {
	background-color: rgba(0, 0, 0, 0.12);
}

md-tabs.md-hue-2 md-tabs-wrapper {
	background-color: transparent;
	border-color: rgba(0, 0, 0, 0.12);
}

md-toast.md-hue-2 {
	background-color: #323232;
	color: rgb(250, 250, 250);
}

md-toast.md-hue-2 .md-button {
	color: rgb(250, 250, 250);
}

md-tooltip.md-hue-2 {
	color: rgb(255, 255, 255);
}

md-tooltip.md-hue-2 .md-background {
	background-color: rgba(0, 0, 0, 0.54);
}
</style>
<style type="text/css">/* mixin definition ; sets LTR and RTL within the same style call */
md-autocomplete.md-hue-3 {
	background: rgb(250, 250, 250);
}

md-autocomplete.md-hue-3[disabled] {
	background: rgb(245, 245, 245);
}

md-autocomplete.md-hue-3 button md-icon path {
	fill: rgb(117, 117, 117);
}

md-autocomplete.md-hue-3 button:after {
	background: rgba(117, 117, 117, 0.3);
}

.md-autocomplete-suggestions.md-hue-3 {
	background: rgb(250, 250, 250);
}

.md-autocomplete-suggestions.md-hue-3 li {
	color: rgb(33, 33, 33);
}

.md-autocomplete-suggestions.md-hue-3 li .highlight {
	color: rgb(117, 117, 117);
}

.md-autocomplete-suggestions.md-hue-3 li:hover,
	.md-autocomplete-suggestions.md-hue-3 li.selected {
	background: rgb(238, 238, 238);
}

md-bottom-sheet.md-hue-3 {
	background-color: rgb(250, 250, 250);
	border-top-color: rgb(224, 224, 224);
}

md-bottom-sheet.md-hue-3 .md-subheader {
	background-color: rgb(250, 250, 250);
}

md-backdrop {
	background-color: rgba(33, 33, 33, 0.0);
}

md-backdrop.md-opaque.md-hue-3 {
	background-color: rgba(33, 33, 33, 0.48);
}

md-backdrop.md-opaque.md-hue-3.ng-enter {
	background-color: rgba(33, 33, 33, 0.0);
}

md-backdrop.md-opaque.md-hue-3.ng-enter.md-opaque.md-hue-3.ng-enter-active
	{
	background-color: rgba(33, 33, 33, 0.48);
}

md-backdrop.md-opaque.md-hue-3.ng-leave.md-opaque.md-hue-3.ng-leave-active
	{
	background-color: rgba(33, 33, 33, 0.0);
}

md-card.md-hue-3 {
	background-color: rgb(33, 33, 33);
	border-radius: 2px;
}

md-checkbox.md-hue-3.md-checked .md-ripple {
	color: rgb(117, 117, 117);
}

md-checkbox.md-hue-3.md-checked .md-icon:after {
	border-color: rgb(238, 238, 238);
}

md-checkbox.md-hue-3[disabled].md-checked .md-icon {
	background-color: rgba(0, 0, 0, 0.26);
}

md-content.md-hue-3 {
	color: rgba(0, 0, 0, 0.87);
	background-color: rgb(33, 33, 33);
}

a.md-button.md-hue-3:not ([disabled] ):hover, .md-button.md-hue-3:not ([disabled]
	):hover {
	background-color: rgba(158, 158, 158, 0.2);
}

a.md-button.md-hue-3:not ([disabled] ).md-focused, .md-button.md-hue-3:not
	([disabled] ).md-focused {
	background-color: rgba(158, 158, 158, 0.2);
}

a.md-button.md-hue-3:not ([disabled] ).md-icon-button:hover, .md-button.md-hue-3:not
	([disabled] ).md-icon-button:hover {
	background-color: transparent;
}

a.md-button.md-hue-3.md-raised, .md-button.md-hue-3.md-raised {
	color: rgba(255, 255, 255, 0.87);
	background-color: rgb(250, 250, 250);
}

a.md-button.md-hue-3.md-raised:not ([disabled] ) .md-icon, .md-button.md-hue-3.md-raised:not
	([disabled] ) .md-icon {
	color: rgba(255, 255, 255, 0.87);
}

a.md-button.md-hue-3.md-raised:not ([disabled] ):hover, .md-button.md-hue-3.md-raised:not
	([disabled] ):hover {
	background-color: rgb(250, 250, 250);
}

a.md-button.md-hue-3.md-raised:not ([disabled] ).md-focused, .md-button.md-hue-3.md-raised:not
	([disabled] ).md-focused {
	background-color: rgb(238, 238, 238);
}

a.md-button.md-hue-3.md-raised[disabled], a.md-button.md-hue-3.md-fab[disabled],
	.md-button.md-hue-3.md-raised[disabled], .md-button.md-hue-3.md-fab[disabled]
	{
	background-color: rgba(0, 0, 0, 0.12);
}

a.md-button.md-hue-3[disabled], .md-button.md-hue-3[disabled] {
	background-color: transparent;
}

md-chips.md-hue-3 .md-chips {
	box-shadow: 0 1px rgb(224, 224, 224);
}

md-chips.md-hue-3 .md-chip {
	background: rgb(224, 224, 224);
	color: rgb(66, 66, 66);
}

md-chips.md-hue-3 md-chip-remove .md-button md-icon path {
	fill: rgb(158, 158, 158);
}

.md-contact-suggestion span.md-contact-email {
	color: rgb(189, 189, 189);
}

md-dialog.md-hue-3 {
	border-radius: 4px;
	background-color: rgb(33, 33, 33);
}

md-input-container.md-hue-3 .md-input[disabled], [disabled] md-input-container.md-hue-3 .md-input
	{
	border-bottom-color: transparent;
	color: rgba(0, 0, 0, 0.26);
	background-image: linear-gradient(to right, rgba(0, 0, 0, 0.26) 0%,
		rgba(0, 0, 0, 0.26) 33%, transparent 0%);
	background-image: -ms-linear-gradient(left, transparent 0%, rgba(0, 0, 0, 0.26)
		100%);
}

md-list.md-hue-3 .md-proxy-focus.md-focused div.md-no-style {
	background-color: rgb(245, 245, 245);
}

md-list.md-hue-3 md-list-item button {
	background-color: rgb(33, 33, 33);
}

md-list.md-hue-3 md-list-item button.md-button:not ([disabled] ):hover {
	background-color: rgb(33, 33, 33);
}

md-menu-content.md-hue-3 {
	background-color: rgb(33, 33, 33);
}

md-menu-content.md-hue-3 md-menu-divider {
	background-color: rgba(0, 0, 0, 0.12);
}

md-progress-circular.md-hue-3 {
	background-color: transparent;
}

md-select-menu.md-hue-3 md-option:focus:not ([selected] ) {
	background: rgb(238, 238, 238);
}

md-sidenav.md-hue-3 {
	background-color: rgb(33, 33, 33);
}

md-slider.md-hue-3 .md-track {
	background-color: rgba(0, 0, 0, 0.26);
}

md-slider.md-hue-3 .md-track-ticks {
	background-color: rgba(0, 0, 0, 0.12);
}

md-slider.md-hue-3 .md-focus-thumb {
	background-color: rgba(0, 0, 0, 0.54);
}

md-slider.md-hue-3 .md-disabled-thumb {
	border-color: rgb(33, 33, 33);
}

md-slider.md-hue-3.md-min .md-thumb:after {
	background-color: rgb(33, 33, 33);
}

md-slider.md-hue-3[disabled]:not (.md-min ) .md-thumb:after {
	background-color: rgba(0, 0, 0, 0.26);
}

.md-subheader.md-hue-3 {
	color: rgba(0, 0, 0, 0.54);
	background-color: rgb(33, 33, 33);
}

md-switch.md-hue-3 .md-thumb {
	background-color: rgb(250, 250, 250);
}

md-switch.md-hue-3 .md-bar {
	background-color: rgb(158, 158, 158);
}

md-switch.md-hue-3[disabled] .md-thumb {
	background-color: rgb(189, 189, 189);
}

md-switch.md-hue-3[disabled] .md-bar {
	background-color: rgba(0, 0, 0, 0.12);
}

md-tabs.md-hue-3 md-tabs-wrapper {
	background-color: transparent;
	border-color: rgba(0, 0, 0, 0.12);
}

md-toast.md-hue-3 {
	background-color: #323232;
	color: rgb(250, 250, 250);
}

md-toast.md-hue-3 .md-button {
	color: rgb(250, 250, 250);
}

md-tooltip.md-hue-3 {
	color: rgb(255, 255, 255);
}

md-tooltip.md-hue-3 .md-background {
	background-color: rgba(0, 0, 0, 0.54);
}
</style>
<style type="text/css">
@charset "UTF-8"; 

[ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak,
	.x-ng-cloak, .ng-hide:not (.ng-hide-animate ){
	display: none !important;
}

ng\:form {
	display: block;
}

.ng-animate-shim {
	visibility: hidden;
}

.ng-anchor {
	position: absolute;
}
</style>
<meta charset="utf-8">
<title>游戏管理后台</title>
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/animate.css/animate.css" rel="stylesheet"
	type="text/css">
<link href="css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="css/simple-line-icons.css"
	rel="stylesheet" type="text/css">
<link href="css/bootstrap.css"
	rel="stylesheet" type="text/css">
<link href="css/app.min.css" rel="stylesheet">
<script src="js/controllers/signin.js" async=""></script>
</head>
<body class="ng-scope" ng-controller="AppCtrl" style="font-family: SimSun;">
	<!-- uiView:  -->
	<div class="app ng-scope app-header-fixed" id="app" ui-view=""
		ng-class="{'app-header-fixed':app.settings.headerFixed, 'app-aside-fixed':app.settings.asideFixed, 'app-aside-folded':app.settings.asideFolded, 'app-aside-dock':app.settings.asideDock, 'container':app.settings.container}">
		<!-- uiView:  -->
		<div class="fade-in-right-big smooth ng-scope" ui-view="">
			<div class="container w-xxl w-auto-xs ng-scope"
				ng-controller="SigninFormController"
				ng-init="app.settings.container = false;">
				<a class="navbar-brand block m-t ng-binding" style="font-size:30px;
					href="">趣友欢乐游戏</a>
				<div class="m-b-lg">
					<div class="wrapper text-center" ></div>
					<form action="login.do" name="form" method="post"
						class="form-validation ng-invalid ng-invalid-required ng-dirty ng-valid-parse" onsubmit="return sumbit_sure()">
						<div class="text-danger wrapper text-center ng-binding ng-hide"
							aria-hidden="true" ng-show="authError"></div>
						<div class="list-group list-group-sm">
							<div class="list-group-item">
								<input name="userId" 
									class="form-control no-border ng-pristine ng-untouched ng-invalid ng-invalid-required"
									aria-invalid="true" aria-required="true" required=""
									type="text" placeholder="用户名" ng-model="user.name">
							</div>
							<div class="list-group-item">
								<input name="password" 
									class="form-control no-border ng-pristine ng-untouched ng-invalid ng-invalid-required"
									aria-invalid="true" aria-required="true" required=""
									type="password" placeholder="密码" ng-model="user.password">
							</div>
						</div>
						<div class="list-group list-group-sm">
							<div class="checkbox">
								<label class="i-checks"> <input id="idAgree_checkbox" tabindex="0"
									class="ng-valid ng-dirty ng-valid-parse ng-touched"
									aria-checked="false" aria-invalid="false" type="checkbox"
									checked="" ng-model="agree"><i></i> 遵守推广协议
								</label>
							</div>
						</div>
						<button class="btn btn-lg btn-block" style="background:#ccc"
							type="submit" onmouseover="this.style.backgroundColor='#23B7E5'" onmouseout="this.style.backgroundColor='#ccc'">登录</button>
						<div class="line line-dashed"></div>
					</form>
				</div>
				<!-- ngInclude: 'tpl/blocks/page_footer.html' -->
				<div class="text-center ng-scope"
					ng-include="'tpl/blocks/page_footer.html'"></div>
			</div>
		</div>
	</div>
	<script src="js/app.angular.js">
/********************************************************************/
/*                                                                  */
/*  Copyright (c) 2017 Genesis Mobile                               */
/*                                                                  */
/*  This obfuscated code was created by Jasob 4.2 Trial Version.    */
/*  The code may be used for evaluation purposes only.              */
/*  To obtain full rights to the obfuscated code you have to        */
/*  purchase the license key (http://www.jasob.com/Purchase.html).  */
/*                                                                  */
/********************************************************************/

 </script>
 <script language="javascript">
 function sumbit_sure() {
		  if(document.getElementById("idAgree_checkbox").checked){
		  return true;
		  }
		  alert("请您确认是否遵守此协议");
		  return false;
		  }
 </script>
</body>
</html>