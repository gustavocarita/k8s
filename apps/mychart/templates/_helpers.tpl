{{/* Generate basic labels */}}
{{- define "mychart_labels" }}
labels:
  generator: helm
  date: {{ now | htmlDate }}
  chart: {{ .Chart.Name }}
  version: {{ .Chart.Version }}
{{ include "mychart_app" . | indent 2}}
{{- end }}

{{- define "mychart_app" -}}
app_version: "{{ .Chart.Version }}+{{ .Release.Time.Seconds }}"
{{- end -}}