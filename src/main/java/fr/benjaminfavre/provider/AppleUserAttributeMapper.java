package fr.benjaminfavre.provider;

import org.keycloak.broker.oidc.mappers.AbstractJsonUserAttributeMapper;
import org.keycloak.social.google.GoogleIdentityProviderFactory;

public class AppleUserAttributeMapper extends AbstractJsonUserAttributeMapper {
    private static final String[] cp = new String[] { AppleIdentityProviderFactory.PROVIDER_ID };

    @Override
    public String[] getCompatibleProviders() {
        return cp;
    }

    @Override
    public String getId() {
        return "apple-user-attribute-mapper";
    }
}
