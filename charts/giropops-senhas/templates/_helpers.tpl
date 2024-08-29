{{/*
Create our tags
*/}}
{{- define "app.labels" -}}
app: {{ .labels.app | quote }}
{{- end }}

{{/*
Create resources limits
*/}}
{{- define "app.resources" -}}
requests:
  memory: {{ .resources.requests.memory }}
  cpu: {{ .resources.requests.cpu }}
limits:
  memory: {{ .resources.limits.memory }}
  cpu: {{ .resources.limits.cpu}}
{{- end }}
  
{{/*
Define containers port
*/}}
{{- define "app.ports" -}}
{{ range .ports }}
- containerPort: {{ .port }}
{{- end }}
{{- end }}
