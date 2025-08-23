 
  // Mobile menu
  const toggle = document.querySelector('.nav-toggle');
  const nav = document.querySelector('.nav');
  toggle?.addEventListener('click', () => {
    const isOpen = nav.classList.toggle('open');
    toggle.setAttribute('aria-expanded', isOpen ? 'true' : 'false');
  });

  // Language dropdown
  const lang = document.querySelector('.lang');
  const langBtn = document.querySelector('.lang-btn');
  langBtn?.addEventListener('click', (e) => {
    e.stopPropagation();
    lang.classList.toggle('open');
    langBtn.setAttribute('aria-expanded', lang.classList.contains('open'));
  });
  document.addEventListener('click', () => lang.classList.remove('open'));
 