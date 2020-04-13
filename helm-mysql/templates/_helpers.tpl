{{- define "imagePullSecret" }}
{{- printf "{\"auths\": {\"%s\": {\"auth\": \"%s\"}}}" .Values.imagepullCredentials.registry (printf "%s:%s" .Values.imagepullCredentials.username .Values.imagepullCredentials.password | b64enc) | b64enc }}
{{- end }}
