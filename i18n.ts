const cookieObj = typeof window === 'undefined' ? require('next/headers') : require('universal-cookie');

import en from 'public/locales/en.json';
const langObj: any = { en};

export const getTranslation = () => {
    const data: any = langObj['en'];

    const t = (key: string) => {
        return data[key] ? data[key] : key;
    };

    const initLocale = (themeLocale: string) => {
        i18n.changeLanguage(themeLocale);
    };

    const i18n = {
        language: 'en',
        changeLanguage: (lang: string) => {
            const cookies = new cookieObj.default(null, { path: '/' });
            cookies.set('i18nextLng', lang);
        },
    };

    return { t, i18n, initLocale };
};
