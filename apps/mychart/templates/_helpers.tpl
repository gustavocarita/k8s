{{/* Generate basic labels */}}
{{- define "mychart_labels" }}
labels:
  generator: helm
  date: {{ now | htmlDate }}
  chart: {{ .Chart.Name }}
  version: {{ .Chart.Version }}
{{- end }}