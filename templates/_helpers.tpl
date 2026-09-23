{{/*
Expand the name of the chart.
*/}}
{{- define "demo-web.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "demo-web.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "demo-web.name" .) | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels.
*/}}
{{- define "demo-web.labels" -}}
app.kubernetes.io/name: {{ include "demo-web.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end }}

{{/*
Selector labels.
*/}}
{{- define "demo-web.selectorLabels" -}}
app.kubernetes.io/name: {{ include "demo-web.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
