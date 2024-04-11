SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS model_has_roles;
CREATE TABLE model_has_roles  (
  role_id bigint UNSIGNED NOT NULL,
  model_type varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  model_id bigint UNSIGNED NOT NULL,
  PRIMARY KEY (role_id, model_id, model_type) USING BTREE,
  INDEX model_has_roles_model_id_model_type_index(model_id, model_type) USING BTREE,
  CONSTRAINT model_has_roles_ibfk_1 FOREIGN KEY (role_id) REFERENCES roles (id) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO model_has_roles VALUES (1, 'App\\User', 1);
INSERT INTO model_has_roles VALUES (2, 'App\\User', 2);

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS permissions;
CREATE TABLE permissions  (
  id bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  name varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  guard_name varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO permissions VALUES (1, 'usuario_inserir', 'usuario_inserir', '2021-10-27 19:15:39', '2021-10-27 19:15:39');
INSERT INTO permissions VALUES (2, 'usuario_editar', 'usuario_editar', '2021-10-27 19:15:39', '2021-10-27 19:15:39');
INSERT INTO permissions VALUES (3, 'usuario_listar', 'usuario_listar', '2021-10-27 19:15:39', '2021-10-27 19:15:39');
INSERT INTO permissions VALUES (4, 'usuario_exibir', 'usuario_exibir', '2021-10-27 19:15:39', '2021-10-27 19:15:39');
INSERT INTO permissions VALUES (5, 'usuario_excluir', 'usuario_excluir', '2021-10-27 19:15:39', '2021-10-27 19:15:39');
INSERT INTO permissions VALUES (6, 'categoria_inserir', 'usuario_inserir', '2021-10-27 19:15:39', '2021-10-27 19:15:39');
INSERT INTO permissions VALUES (7, 'categoria_editar', 'categoria_editar', '2021-10-27 19:15:39', '2021-10-27 19:15:39');
INSERT INTO permissions VALUES (8, 'categoria_listar', 'categoria_listar', '2021-10-27 19:15:39', '2021-10-27 19:15:39');
INSERT INTO permissions VALUES (9, 'categoria_exibir', 'categoria_exibir', '2021-10-27 19:15:39', '2021-10-27 19:15:39');
INSERT INTO permissions VALUES (10, 'categoria_excluir', 'categoria_excluir', '2021-10-27 19:15:39', '2021-10-27 19:15:39');
INSERT INTO permissions VALUES (11, 'produto_inserir', 'produto_inserir', '2021-10-27 19:15:39', '2021-10-27 19:15:39');
INSERT INTO permissions VALUES (12, 'produto_editar', 'produto_editar', '2021-10-27 19:15:39', '2021-10-27 19:15:39');
INSERT INTO permissions VALUES (13, 'produto_listar', 'produto_listar', '2021-10-27 19:15:39', '2021-10-27 19:15:39');
INSERT INTO permissions VALUES (14, 'produto_exibir', 'produto_exibir', '2021-10-27 19:15:39', '2021-10-27 19:15:39');
INSERT INTO permissions VALUES (15, 'produto_excluir', 'produto_excluir', '2021-10-27 19:15:39', '2021-10-27 19:15:39');

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS role_has_permissions;
CREATE TABLE role_has_permissions  (
  permission_id bigint UNSIGNED NOT NULL,
  role_id bigint UNSIGNED NOT NULL,
  PRIMARY KEY (permission_id, role_id) USING BTREE,
  INDEX role_has_permissions_role_id_foreign(role_id) USING BTREE,
  CONSTRAINT role_has_permissions_ibfk_1 FOREIGN KEY (permission_id) REFERENCES permissions (id) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT role_has_permissions_ibfk_2 FOREIGN KEY (role_id) REFERENCES roles (id) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
INSERT INTO role_has_permissions VALUES (1, 1);
INSERT INTO role_has_permissions VALUES (2, 1);
INSERT INTO role_has_permissions VALUES (2, 2);
INSERT INTO role_has_permissions VALUES (3, 1);
INSERT INTO role_has_permissions VALUES (3, 2);
INSERT INTO role_has_permissions VALUES (4, 1);
INSERT INTO role_has_permissions VALUES (5, 1);
INSERT INTO role_has_permissions VALUES (6, 1);
INSERT INTO role_has_permissions VALUES (7, 1);
INSERT INTO role_has_permissions VALUES (8, 1);
INSERT INTO role_has_permissions VALUES (8, 2);
INSERT INTO role_has_permissions VALUES (9, 1);
INSERT INTO role_has_permissions VALUES (9, 2);
INSERT INTO role_has_permissions VALUES (10, 1);
INSERT INTO role_has_permissions VALUES (11, 1);
INSERT INTO role_has_permissions VALUES (12, 1);
INSERT INTO role_has_permissions VALUES (13, 1);
INSERT INTO role_has_permissions VALUES (13, 2);
INSERT INTO role_has_permissions VALUES (14, 1);
INSERT INTO role_has_permissions VALUES (14, 2);
INSERT INTO role_has_permissions VALUES (15, 1);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS roles;
CREATE TABLE roles  (
  id bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  name varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  guard_name varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO roles VALUES (1, 'Administrador', 'administrador', '2021-10-27 19:11:35', '2021-10-27 19:11:35');
INSERT INTO roles VALUES (2, 'Padrão', 'padrao', '2021-10-27 19:11:35', '2021-10-27 19:11:35');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS users;
CREATE TABLE users  (
  id bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  name varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  email varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  password varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  status int NULL DEFAULT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO users VALUES (1, 'andre', 'andr@andr.com.br', 'sdrgsdtgsdgtsgdf', 1, '2021-10-27 19:13:42', '2021-10-27 19:13:42');
INSERT INTO users VALUES (2, 'eduardo', 'edu@edu.com.br', 'sdgsdgsftsrftsrtraerg', 1, '2021-10-27 19:13:42', '2021-10-27 19:13:42');

SET FOREIGN_KEY_CHECKS = 1;
