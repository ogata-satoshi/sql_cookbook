SELECT
  REPLACE(
    translate(
      'Stewie Griffin',
      'abcdefghijklmnopqrstuvwxyz.',
      ''
    ),
    ' ',
    '.'
  ) || '.'
