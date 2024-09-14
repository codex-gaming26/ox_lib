import { MantineThemeOverride } from '@mantine/core';

export const theme: MantineThemeOverride = {
  colorScheme: 'dark',
  fontFamily: 'Roboto',
  shadows: { sm: '1px 1px 3px rgba(0, 0, 0, 0.5)' },
  components: {
    Modal: {
      styles: {
        modal: {
          background: 'radial-gradient(circle, rgba(114, 113, 113, 0.493) 0%, rgba(77, 79, 87, 0.877) 100%)',
          border:'solid 0.11rem rgba(110, 110, 119, 0.925)',
        },
      },
    },

    TextInput: {
      styles: {
        input: {
          background: 'radial-gradient(83.87% 1043.26% at 50% 50%, rgba(255, 255, 255, 0.15) 0%, rgba(255, 255, 255, 0.08) 100%)',
          border:'solid 0.11rem rgba(110, 110, 119, 0.925)',
        },
      },
    },
    
    TimeInput: {
      styles: {
        input: {
          background: 'radial-gradient(83.87% 1043.26% at 50% 50%, rgba(255, 255, 255, 0.15) 0%, rgba(255, 255, 255, 0.08) 100%)',
          border:'solid 0.11rem rgba(110, 110, 119, 0.925)',
        },
      },
    },

    Select: {
      styles: {
        input: {
          
          background: 'radial-gradient(83.87% 1043.26% at 50% 50%, rgba(255, 255, 255, 0.15) 0%, rgba(255, 255, 255, 0.08) 100%)',
          border:'solid 0.11rem rgba(110, 110, 119, 0.925)',
        },
      },
    },


    MultiSelect: {
      styles: {
        input: {
          background: 'radial-gradient(83.87% 1043.26% at 50% 50%, rgba(255, 255, 255, 0.15) 0%, rgba(255, 255, 255, 0.08) 100%)',
          border:'solid 0.11rem rgba(110, 110, 119, 0.925)',
        },
      },
    },

    NumberInput: {
      styles: {
        input: {
          
          background: 'radial-gradient(83.87% 1043.26% at 50% 50%, rgba(255, 255, 255, 0.15) 0%, rgba(255, 255, 255, 0.08) 100%)',
          border:'solid 0.11rem rgba(110, 110, 119, 0.925)',
        },

        
      },
    },

    Checkbox: {
      styles: {
        input: {
          color:'white',
          background: 'radial-gradient(83.87% 1043.26% at 50% 50%, rgba(255, 255, 255, 0.15) 0%, rgba(255, 255, 255, 0.08) 100%)',
          border:'solid 0.11rem rgba(110, 110, 119, 0.925)',
        },
      },
    },

    PasswordInput: {
      styles: {
        input: {
          background: 'radial-gradient(83.87% 1043.26% at 50% 50%, rgba(255, 255, 255, 0.15) 0%, rgba(255, 255, 255, 0.08) 100%)',
          border:'solid 0.11rem rgba(110, 110, 119, 0.925)',
        },
        icon: {
          backgroundColor: '#82c91e',
          border:'solid 0.11rem rgba(110, 110, 119, 0.925)',
          color:'white',
        },
      },
    },

  },
};
