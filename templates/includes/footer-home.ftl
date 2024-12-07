[#assign root = cmsfn.root(content, "mgnl:page")!content ]
<footer id="footer">
    <div class="inner">
        <ul class="icons">
            [#if root.socX?has_content]
                <li>
                    <a href="${root.socX!}" class="social-icon">
                        <img src="${ctx.contextPath}/.resources/hip-module/webresources/icons/x-white.svg" alt="Aktion HIP auf X">
                    </a>
                </li>
            [/#if]
            [#if root.socGithub?has_content]
                <li>
                    <a href="${root.socGithub!}" class="social-icon">
                        <img src="${ctx.contextPath}/.resources/hip-module/webresources/icons/github-white.svg" alt="Aktion HIP auf GitHub">
                    </a>
                </li>
            [/#if]
            [#if root.socLinkedin?has_content]
                <li>
                    <a href="${root.socLinkedin!}" class="social-icon">
                        <img src="${ctx.contextPath}/.resources/hip-module/webresources/icons/linkedin-white.svg" alt="Aktion HIP auf LinkedIn">
                    </a>
                </li>
            [/#if]
            [#if root.socFacebook?has_content]
                <li>
                    <a href="${root.socFacebook!}" class="social-icon">
                        <img src="${ctx.contextPath}/.resources/hip-module/webresources/icons/facebook-white.svg" alt="Aktion HIP auf Facebook">
                    </a>
                </li>
            [/#if]
            [#if root.socInstagram?has_content]
                <li>
                    <a href="${root.socInstagram!}" class="social-icon">
                        <img src="${ctx.contextPath}/.resources/hip-module/webresources/icons/instagram-white.svg" alt="Aktion HIP auf Instagram">
                    </a>
                </li>
            [/#if]
        </ul>
        <ul class="copyright">
            <li>&copy; Aktion HIP</li>
            [#if root.disclaimer?has_content]
                <li><a href="${cmsfn.link(cmsfn.contentById(root.disclaimer))}">Disclaimer</a></li>
            [/#if]
            <li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
        </ul>
    </div>
</footer>
