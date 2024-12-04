/**
 * Course table styles
 */

// 颜色
export const Colors = {
  primary: '#2196F3',
  white: '#FFFFFF',
  grayLight: '#F5F5F5',
  courseCards: [
    '#FF7043', // Deep Orange
    '#42A5F5', // Blue
    '#66BB6A', // Green
    '#FFA726', // Orange
    '#AB47BC', // Purple
    '#EC407A', // Pink
    '#26A69A', // Teal
    '#5C6BC0'  // Indigo
  ]
};

// 尺寸
export const Sizes = {
  // 间距
  spacingTiny: 4,
  spacingSmall: 8,
  spacingNormal: 12,
  spacingLarge: 16,
  
  // 圆角
  radiusSmall: 4,
  radiusNormal: 8,
  radiusLarge: 12,
  
  // 阴影
  shadowRadius: 8,
  shadowOffsetX: 0,
  shadowOffsetY: 2,
  shadowColor: '#00000014',
  shadowColorDark: '#00000029',
  
  // 边框
  borderWidth: 1
};

// 排版
export const Typography = {
  // 标题
  titleLarge: {
    fontSize: 20,
    fontWeight: FontWeight.Medium,
    opacity: 0.87
  },
  titleNormal: {
    fontSize: 16,
    fontWeight: FontWeight.Medium,
    opacity: 0.87
  },
  titleSmall: {
    fontSize: 14,
    fontWeight: FontWeight.Medium,
    opacity: 0.87
  },
  bodyNormal: {
    fontSize: 14,
    fontWeight: FontWeight.Regular,
    opacity: 0.6
  },
  bodySmall: {
    fontSize: 12,
    fontWeight: FontWeight.Regular,
    opacity: 0.6
  },
  caption: {
    fontSize: 12,
    fontWeight: FontWeight.Regular,
    opacity: 0.38
  }
};

// 动画
export const Animations = {
  // 持续时间
  durationFast: 150,
  durationNormal: 250,
  durationSlow: 350,
  curveDefault: Curve.EaseInOut,
  fadeIn: {
    duration: 250,
    curve: Curve.EaseInOut,
    delay: 0,
    iterations: 1,
    playMode: PlayMode.Normal
  },
  scaleNormal: {
    duration: 150,
    curve: Curve.EaseInOut,
    delay: 0,
    iterations: 1,
    playMode: PlayMode.Normal
  }
};
