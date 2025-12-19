{{/* App name */}}
{{- define "go-web-app-helm.name" -}}
{{ .Chart.Name }}
{{- end }}

{{/* Full resource name */}}
{{- define "go-web-app-helm.fullname" -}}
{{ .Release.Name }}
{{- end }}

{{/* Selector labels */}}
{{- define "go-web-app-helm.selectorLabels" -}}
app.kubernetes.io/name: {{ include "go-web-app-helm.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/* Common labels */}}
{{- define "go-web-app-helm.labels" -}}
{{ include "go-web-app-helm.selectorLabels" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
