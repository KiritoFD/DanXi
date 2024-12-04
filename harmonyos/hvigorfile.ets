import { Project } from '@ohos/hvigor'
import { ohosTask } from '@ohos/hvigor-ohos-plugin'

export default {
  project: {
    name: 'danxi',
    version: '1.4.5',
    type: 'app',
  },
  targets: {
    default: {
      compiler: {
        options: {
          sourceMap: true,
          optimizeLevel: 'O0',
        },
      },
    },
  },
  tasks: {
    assembleHap: {
      builder: 'oh-package',
      options: {
        projectPath: '.',
      },
    },
    ...ohosTask,
  },
} as Project
