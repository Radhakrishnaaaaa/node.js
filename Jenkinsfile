node ('agent1') {
    stage ('checkout') {
        git branch: 'main', url: 'https://github.com/Radhakrishnaaaaa/node.js.git'
    }
    stage ('install package modules') {
        sh ''' npm i '''
    }
    stage ('deployment') {
        sh ''' systemctl restart npm.service '''
    }
}
