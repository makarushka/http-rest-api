BEGIN;

-- CREATE TABLE "user_info" ------------------------------------
CREATE TABLE "public"."user_info" (
	"id" Character Varying( 2044 ) NOT NULL,
	"first_name" Character Varying( 2044 ) NOT NULL,
	"last_name" Character Varying( 2044 ) NOT NULL,
	"gender" Character Varying( 2044 ) NOT NULL,
	"email" Character Varying( 2044 ) NOT NULL,
	"age" Bigint NOT NULL,
	CONSTRAINT "unique_user_info_id" UNIQUE( "id" ),
	CONSTRAINT "unique_user_info_email" UNIQUE( "email" ) );
 ;
-- -------------------------------------------------------------

-- CREATE INDEX "index_firstName" ------------------------------
CREATE INDEX "index_firstName" ON "public"."user_info" USING btree( "first_name" Asc NULLS Last );
-- -------------------------------------------------------------

-- CREATE INDEX "index_lastName" -------------------------------
CREATE INDEX "index_lastName" ON "public"."user_info" USING btree( "last_name" Asc NULLS Last );
-- -------------------------------------------------------------

-- CREATE INDEX "index_gender" ---------------------------------
CREATE INDEX "index_gender" ON "public"."user_info" USING btree( "gender" Asc NULLS Last );
-- -------------------------------------------------------------

-- CREATE INDEX "index_age" ------------------------------------
CREATE INDEX "index_age" ON "public"."user_info" USING btree( "age" Asc NULLS Last );
-- -------------------------------------------------------------

COMMIT;
