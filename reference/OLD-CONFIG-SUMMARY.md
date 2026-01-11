# Old Stream Deck Config Reference

Exported from work Mac: 2026-01-11

## Profiles Found

| Profile | Description |
|---------|-------------|
| iterm | Main iTerm profile with kubectl, SSH, DNS buttons |
| iterm-kubectl | Kubernetes-specific commands |
| iterm-dns | DNS tools |
| VS-Code | VS Code shortcuts |
| SSH old | Legacy SSH shortcuts |
| Default Profile | Base profiles (x2) |

---

## Main iTerm Profile Buttons

### Kubernetes Commands

| Button Label | Command |
|--------------|---------|
| K8 karpenter log | `kubectl logs -f -n karpenter -l app.kubernetes.io/name=karpenter -c controller` |
| K8 Portforward Service | `kubectl port-forward <Service|Pod> userPort:podPort` |
| K8 Test Pod Alpine | `kubectl run -it --rm debug --image=alpine --restart=Never --pod-running-timeout=3m -- sh` |
| K8 Show Secret | `kubectl view-secret -a <SECRETNAME>` |
| K8 Scale Deploy | `kubectl scale deployment <NAME> --replicas 0` |
| K8 aws-auth listing | `kubectl get configmaps -n kube-system aws-auth -o yaml` |

### SSH/Network Commands

| Button Label | Command |
|--------------|---------|
| SSH Create Keypair | `ssh-keygen -m PEM -t rsa -b 2048 -C "comment-here"` |
| CIDR ipCalc | `ipcalc 10.240.0.0/13` |

### iTerm Hotkeys

| Button Label | Action |
|--------------|--------|
| iTerm MARK | Cmd+Shift+M (set mark) |
| iTerm Jump Mark | Cmd+Shift+J (jump to mark) |

### Integrations

| Button Label | Action |
|--------------|--------|
| Team leave | MS Teams - Leave call |
| Team Mute | MS Teams - Toggle mute |
| MuteDeck | Bring to front |

### Folders (Sub-profiles)

| Folder Button | Opens |
|---------------|-------|
| iTerm2 | iTerm shortcuts folder |
| kubectl | Kubernetes commands folder |
| Kube | Kubernetes folder |
| DU | Disk usage folder |
| DNS | DNS tools folder |

---

## Feature: Folders with Auto-Return

The "Create Folder" action opens a sub-profile. Stream Deck has these folder behaviors:
- Press folder button → shows child profile
- Select action in folder → executes and returns to parent
- Timeout (configurable) → auto-returns to parent if no selection

This is the "Press and hold to stay" vs "tap to peek" behavior.

---

## Raw Profile Locations

```
reference/work-mac-profiles/
├── 173EFDE7-028B-46AD-A216-261D76E80900.sdProfile/  # iterm (main)
├── 3549844D-BB2D-4F3D-9792-51E4BE357797.sdProfile/  # iterm-kubectl
├── B742CFBC-F6D6-4AFB-A6A3-5657B0BB7546.sdProfile/  # iterm-dns
├── 14876D6A-0CB8-4DB9-A66F-67923D97747C.sdProfile/  # VS-Code
├── 3294A8DC-3883-4049-BFD5-D06B61593E7F.sdProfile/  # SSH old
├── 6BDDD256-D462-4D60-A116-ADBF85ED78F1.sdProfile/  # Default Profile
└── EE87C39A-63CB-444F-B329-22C1EE3284F3.sdProfile/  # Default Profile
```
