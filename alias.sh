#!/bin/zsh

alias vim="nvim"
alias ll="eza --icons --long --tree --level=1 --sort=type"
alias lg="lazygit"

alias aws-ecs-info="aws ec2 describe-instances | jq '.Reservations[].Instances[] | {InstanceId: .InstanceId, InstanceType: .InstanceType, LaunchTime: .LaunchTime , PublicIp: .PublicIpAddress, PrivateIp: .PrivateIpAddress, State: .State.Name}'"
alias aws-ecs-stop='function __aws_ecs_stop() { if [ -z "$1" ]; then echo "Usage: aws-ecs-stop <instance-id>"; return 1; else aws ec2 stop-instances --instance-ids "$1"; fi }; __aws_ecs_stop'

alias ai-en-word='function __ai_en_word() { if [ -z "$1" ]; then echo "Usage: ai-en-word <word>"; return 1; else sgpt "{$1}可以用哪些英文单词来表达，以md列表格式只返回单词结果。"; fi }; __ai_en_word'
alias ai-en-sentence='function __ai_en_sentence() { if [ -z "$1" ]; then echo "Usage: ai-en-sentence <sentence>"; return 1; else sgpt "{$1}用英文如何表达，只返回翻译结果。"; fi }; __ai_en_sentence'
