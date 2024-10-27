<footer id="footer">
    <div class="inner">
        <ul class="icons">
            [#if content.socX?has_content]
                <li>
                    <a href="${content.socX!}" class="social-icon">
                        <img src="${ctx.contextPath}/.resources/hip-module/webresources/icons/x-white.svg" alt="Aktion HIP auf X">
                    </a>
                </li>
            [/#if]
            [#if content.socGithub?has_content]
                <li>
                    <a href="${content.socGithub!}" class="social-icon">
                        <img src="${ctx.contextPath}/.resources/hip-module/webresources/icons/github-white.svg" alt="Aktion HIP auf GitHub">
                    </a>
                </li>
            [/#if]
            [#if content.socLinkedin?has_content]
                <li>
                    <a href="${content.socLinkedin!}" class="social-icon">
                        <img src="${ctx.contextPath}/.resources/hip-module/webresources/icons/linkedin-white.svg" alt="Aktion HIP auf LinkedIn">
                    </a>
                </li>
            [/#if]
            [#if content.socFacebook?has_content]
                <li>
                    <a href="${content.socFacebook!}" class="social-icon">
                        <img src="${ctx.contextPath}/.resources/hip-module/webresources/icons/facebook-white.svg" alt="Aktion HIP auf Facebook">
                    </a>
                </li>
            [/#if]
            [#if content.socInstagram?has_content]
                <li>
                    <a href="${content.socInstagram!}" class="social-icon">
                        <img src="${ctx.contextPath}/.resources/hip-module/webresources/icons/instagram-white.svg" alt="Aktion HIP auf Instagram">
                    </a>
                </li>
            [/#if]
        </ul>
        <ul class="copyright">
            <li>&copy; Aktion HIP</li>
            <li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
        </ul>
    </div>
</footer>
