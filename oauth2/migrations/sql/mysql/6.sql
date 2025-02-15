-- +migrate Up
CREATE INDEX hydra_oauth2_access_requested_at_idx ON hydra_oauth2_access (requested_at);
CREATE INDEX hydra_oauth2_refresh_requested_at_idx ON hydra_oauth2_refresh (requested_at);
CREATE INDEX hydra_oauth2_oidc_requested_at_idx ON hydra_oauth2_oidc (requested_at);
CREATE INDEX hydra_oauth2_code_requested_at_idx ON hydra_oauth2_code (requested_at);

-- +migrate Down
DROP INDEX hydra_oauth2_access_requested_at_idx ON hydra_oauth2_access;
DROP INDEX hydra_oauth2_refresh_requested_at_idx ON hydra_oauth2_refresh;
DROP INDEX hydra_oauth2_oidc_requested_at_idx ON hydra_oauth2_oidc;
DROP INDEX hydra_oauth2_code_requested_at_idx ON hydra_oauth2_code;
