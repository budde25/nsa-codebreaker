.class public Lcom/badguy/terrortime/crypto/Messaging;
.super Ljava/lang/Object;
.source "Messaging.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decryptMessage(Lcom/badguy/terrortime/Message;Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/util/Optional;
    .locals 24
    .param p0, "msg"    # Lcom/badguy/terrortime/Message;
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "publicFingerprint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badguy/terrortime/Message;",
            "Ljava/security/PrivateKey;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "[B>;"
        }
    .end annotation

    .line 145
    move-object/from16 v1, p2

    const-string v2, "body"

    const-string v3, "iv"

    const-string v4, "msg"

    const-string v5, "messageSig"

    const-string v6, "message"

    const-string v7, "messageKey"

    const-string v8, "decryptMessage"

    :try_start_0
    new-instance v9, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/badguy/terrortime/Message;->getContent()[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    .line 146
    .local v9, "jsonString":Ljava/lang/String;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 148
    .local v10, "json":Lorg/json/JSONObject;
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_8

    const-string v12, "Invalid message spec"

    if-eqz v11, :cond_a

    :try_start_1
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    move-object/from16 v13, p1

    move-object/from16 v23, v9

    goto/16 :goto_3

    .line 152
    :cond_0
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 153
    .local v7, "keyDict":Lorg/json/JSONObject;
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 155
    .local v6, "messageDict":Lorg/json/JSONObject;
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    move-object/from16 v13, p1

    move-object/from16 v21, v6

    move-object/from16 v23, v9

    goto/16 :goto_2

    .line 158
    :cond_1
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No fingerprint found matching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    return-object v2

    .line 163
    :cond_2
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_8

    .line 164
    .local v11, "encKeyBlob":Ljava/lang/String;
    move-object/from16 v13, p1

    :try_start_2
    invoke-static {v13, v11}, Lcom/badguy/terrortime/crypto/CryptHelper;->unwrapKey(Ljava/security/PrivateKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v12

    .line 166
    .local v12, "msgKey":Ljavax/crypto/SecretKey;
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "encMessage":Ljava/lang/String;
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v14

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v3

    .line 169
    .local v3, "iv":[B
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "sig":Ljava/lang/String;
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v14

    .line 174
    .local v14, "decodedMessage":[B
    invoke-static {v12, v14}, Lcom/badguy/terrortime/crypto/CryptHelper;->hmacSHA256(Ljavax/crypto/SecretKey;[B)[B

    move-result-object v15

    .line 177
    .local v15, "hmacDigest":[B
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 180
    .local v1, "decodedSig":[B
    invoke-static {v15, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 182
    invoke-static {v12, v14, v3}, Lcom/badguy/terrortime/crypto/CryptHelper;->aesDecrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v16

    move-object/from16 v17, v16

    .line 183
    .local v17, "decryptedMsg":[B
    move-object/from16 v16, v1

    .end local v1    # "decodedSig":[B
    .local v16, "decodedSig":[B
    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v18, v3

    .end local v3    # "iv":[B
    .local v18, "iv":[B
    new-instance v3, Ljava/lang/String;

    move-object/from16 v19, v4

    move-object/from16 v4, v17

    .end local v17    # "decryptedMsg":[B
    .local v4, "decryptedMsg":[B
    .local v19, "encMessage":Ljava/lang/String;
    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 187
    .local v1, "internalMsg":Lorg/json/JSONObject;
    invoke-virtual/range {p0 .. p0}, Lcom/badguy/terrortime/Message;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/badguy/terrortime/Message;->getContactId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/badguy/terrortime/Message;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 189
    .local v3, "clientFingerprints":Lorg/json/JSONArray;
    move-object/from16 v17, v4

    .end local v4    # "decryptedMsg":[B
    .restart local v17    # "decryptedMsg":[B
    invoke-virtual/range {p0 .. p0}, Lcom/badguy/terrortime/Message;->getContactId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 190
    .local v4, "contactFingerprints":Lorg/json/JSONArray;
    const/16 v20, 0x0

    move/from16 v21, v20

    move-object/from16 v22, v5

    move/from16 v5, v21

    .local v5, "i":I
    .local v22, "sig":Ljava/lang/String;
    :goto_0
    move-object/from16 v21, v6

    .end local v6    # "messageDict":Lorg/json/JSONObject;
    .local v21, "messageDict":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v23, v9

    .end local v9    # "jsonString":Ljava/lang/String;
    .local v23, "jsonString":Ljava/lang/String;
    const-string v9, "Mismatched recipients"

    if-ge v5, v6, :cond_4

    .line 191
    :try_start_3
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 192
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    return-object v2

    .line 190
    :cond_3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v6, v21

    move-object/from16 v9, v23

    goto :goto_0

    .line 196
    .end local v5    # "i":I
    :cond_4
    move/from16 v5, v20

    .restart local v5    # "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 197
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 198
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    return-object v2

    .line 196
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 202
    .end local v3    # "clientFingerprints":Lorg/json/JSONArray;
    .end local v4    # "contactFingerprints":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_6
    nop

    .line 206
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    return-object v2

    .line 187
    .end local v17    # "decryptedMsg":[B
    .end local v21    # "messageDict":Lorg/json/JSONObject;
    .end local v22    # "sig":Ljava/lang/String;
    .end local v23    # "jsonString":Ljava/lang/String;
    .local v4, "decryptedMsg":[B
    .local v5, "sig":Ljava/lang/String;
    .restart local v6    # "messageDict":Lorg/json/JSONObject;
    .restart local v9    # "jsonString":Ljava/lang/String;
    :cond_7
    move-object/from16 v17, v4

    move-object/from16 v22, v5

    move-object/from16 v21, v6

    move-object/from16 v23, v9

    .line 203
    .end local v4    # "decryptedMsg":[B
    .end local v5    # "sig":Ljava/lang/String;
    .end local v6    # "messageDict":Lorg/json/JSONObject;
    .end local v9    # "jsonString":Ljava/lang/String;
    .restart local v17    # "decryptedMsg":[B
    .restart local v21    # "messageDict":Lorg/json/JSONObject;
    .restart local v22    # "sig":Ljava/lang/String;
    .restart local v23    # "jsonString":Ljava/lang/String;
    const-string v2, "Invalid internal msg format"

    invoke-static {v8, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    return-object v2

    .line 209
    .end local v16    # "decodedSig":[B
    .end local v17    # "decryptedMsg":[B
    .end local v18    # "iv":[B
    .end local v19    # "encMessage":Ljava/lang/String;
    .end local v21    # "messageDict":Lorg/json/JSONObject;
    .end local v22    # "sig":Ljava/lang/String;
    .end local v23    # "jsonString":Ljava/lang/String;
    .local v1, "decodedSig":[B
    .local v3, "iv":[B
    .local v4, "encMessage":Ljava/lang/String;
    .restart local v5    # "sig":Ljava/lang/String;
    .restart local v6    # "messageDict":Lorg/json/JSONObject;
    .restart local v9    # "jsonString":Ljava/lang/String;
    :cond_8
    move-object/from16 v16, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v22, v5

    move-object/from16 v21, v6

    move-object/from16 v23, v9

    .end local v1    # "decodedSig":[B
    .end local v3    # "iv":[B
    .end local v4    # "encMessage":Ljava/lang/String;
    .end local v5    # "sig":Ljava/lang/String;
    .end local v6    # "messageDict":Lorg/json/JSONObject;
    .end local v9    # "jsonString":Ljava/lang/String;
    .restart local v16    # "decodedSig":[B
    .restart local v18    # "iv":[B
    .restart local v19    # "encMessage":Ljava/lang/String;
    .restart local v21    # "messageDict":Lorg/json/JSONObject;
    .restart local v22    # "sig":Ljava/lang/String;
    .restart local v23    # "jsonString":Ljava/lang/String;
    const-string v1, "HMAC signature does not match"

    invoke-static {v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 155
    .end local v11    # "encKeyBlob":Ljava/lang/String;
    .end local v12    # "msgKey":Ljavax/crypto/SecretKey;
    .end local v14    # "decodedMessage":[B
    .end local v15    # "hmacDigest":[B
    .end local v16    # "decodedSig":[B
    .end local v18    # "iv":[B
    .end local v19    # "encMessage":Ljava/lang/String;
    .end local v21    # "messageDict":Lorg/json/JSONObject;
    .end local v22    # "sig":Ljava/lang/String;
    .end local v23    # "jsonString":Ljava/lang/String;
    .restart local v6    # "messageDict":Lorg/json/JSONObject;
    .restart local v9    # "jsonString":Ljava/lang/String;
    :cond_9
    move-object/from16 v13, p1

    move-object/from16 v21, v6

    move-object/from16 v23, v9

    .line 156
    .end local v6    # "messageDict":Lorg/json/JSONObject;
    .end local v9    # "jsonString":Ljava/lang/String;
    .restart local v21    # "messageDict":Lorg/json/JSONObject;
    .restart local v23    # "jsonString":Ljava/lang/String;
    :goto_2
    invoke-static {v8, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 148
    .end local v7    # "keyDict":Lorg/json/JSONObject;
    .end local v21    # "messageDict":Lorg/json/JSONObject;
    .end local v23    # "jsonString":Ljava/lang/String;
    .restart local v9    # "jsonString":Ljava/lang/String;
    :cond_a
    move-object/from16 v13, p1

    move-object/from16 v23, v9

    .line 149
    .end local v9    # "jsonString":Ljava/lang/String;
    .restart local v23    # "jsonString":Ljava/lang/String;
    :goto_3
    invoke-static {v8, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v1

    .line 214
    .end local v10    # "json":Lorg/json/JSONObject;
    .end local v23    # "jsonString":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_5

    :catch_8
    move-exception v0

    goto :goto_4

    :catch_9
    move-exception v0

    goto :goto_4

    :catch_a
    move-exception v0

    goto :goto_4

    :catch_b
    move-exception v0

    goto :goto_4

    :catch_c
    move-exception v0

    goto :goto_4

    :catch_d
    move-exception v0

    goto :goto_4

    :catch_e
    move-exception v0

    goto :goto_4

    :catch_f
    move-exception v0

    :goto_4
    move-object/from16 v13, p1

    :goto_5
    move-object v1, v0

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "unable to decrypt message"

    invoke-static {v8, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    .end local v1    # "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static final encryptMessage(Lcom/badguy/terrortime/Message;Ljava/util/Set;Ljava/util/Set;)Ljava/util/Optional;
    .locals 15
    .param p0, "msg"    # Lcom/badguy/terrortime/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badguy/terrortime/Message;",
            "Ljava/util/Set<",
            "Ljava/security/PublicKey;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/security/PublicKey;",
            ">;)",
            "Ljava/util/Optional<",
            "[B>;"
        }
    .end annotation

    .line 77
    .local p1, "clientKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/PublicKey;>;"
    .local p2, "contactKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/PublicKey;>;"
    :try_start_0
    invoke-static {}, Lcom/badguy/terrortime/crypto/Messaging;->generateMessageKey()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/badguy/terrortime/crypto/-$$Lambda$Messaging$peSwfA0s4V_o_UFWxRkaqv6FvqY;->INSTANCE:Lcom/badguy/terrortime/crypto/-$$Lambda$Messaging$peSwfA0s4V_o_UFWxRkaqv6FvqY;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    .line 79
    .local v0, "msgKey":Ljavax/crypto/SecretKey;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v1, "contactKeyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v2, "clientKeyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/PublicKey;

    .line 84
    .local v4, "key":Ljava/security/PublicKey;
    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lcom/badguy/terrortime/crypto/CryptHelper;->computeKeyFingerprint([B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0}, Lcom/badguy/terrortime/crypto/CryptHelper;->wrapKey(Ljava/security/PublicKey;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    nop

    .end local v4    # "key":Ljava/security/PublicKey;
    goto :goto_0

    .line 86
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/PublicKey;

    .line 87
    .restart local v4    # "key":Ljava/security/PublicKey;
    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lcom/badguy/terrortime/crypto/CryptHelper;->computeKeyFingerprint([B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0}, Lcom/badguy/terrortime/crypto/CryptHelper;->wrapKey(Ljava/security/PublicKey;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    nop

    .end local v4    # "key":Ljava/security/PublicKey;
    goto :goto_1

    .line 91
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 92
    .local v3, "messageDoc":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 93
    .local v4, "msgKeys":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 94
    .local v5, "message":Lorg/json/JSONObject;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 95
    .local v6, "internalMessage":Lorg/json/JSONObject;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 96
    .local v7, "internalContactFingerprints":Lorg/json/JSONArray;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 99
    .local v8, "internalClientFingerprints":Lorg/json/JSONArray;
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 100
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 102
    nop

    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2

    .line 103
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 104
    .restart local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 107
    nop

    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_3

    .line 110
    :cond_3
    invoke-virtual {p0}, Lcom/badguy/terrortime/Message;->getClientId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    invoke-virtual {p0}, Lcom/badguy/terrortime/Message;->getContactId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v9, "body"

    new-instance v10, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/badguy/terrortime/Message;->getContent()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v0, v9}, Lcom/badguy/terrortime/crypto/CryptHelper;->aesEncrypt(Ljavax/crypto/SecretKey;[B)Landroid/support/v4/util/Pair;

    move-result-object v9

    .line 116
    .local v9, "encMsg":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<[B[B>;"
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v10

    iget-object v11, v9, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, [B

    invoke-virtual {v10, v11}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v10

    .line 119
    .local v10, "iv":Ljava/lang/String;
    iget-object v11, v9, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, [B

    invoke-static {v0, v11}, Lcom/badguy/terrortime/crypto/CryptHelper;->hmacSHA256(Ljavax/crypto/SecretKey;[B)[B

    move-result-object v11

    .line 122
    .local v11, "messageSigBytes":[B
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v12

    iget-object v13, v9, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, [B

    invoke-virtual {v12, v13}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v12

    .line 123
    .local v12, "encodedMsg":Ljava/lang/String;
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v13

    .line 126
    .local v13, "encodedSig":Ljava/lang/String;
    const-string v14, "iv"

    invoke-virtual {v5, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v14, "msg"

    invoke-virtual {v5, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v14, "messageKey"

    invoke-virtual {v3, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v14, "message"

    invoke-virtual {v3, v14, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v14, "messageSig"

    invoke-virtual {v3, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-static {v14}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v14

    .line 135
    .end local v0    # "msgKey":Ljavax/crypto/SecretKey;
    .end local v1    # "contactKeyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "clientKeyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "messageDoc":Lorg/json/JSONObject;
    .end local v4    # "msgKeys":Lorg/json/JSONObject;
    .end local v5    # "message":Lorg/json/JSONObject;
    .end local v6    # "internalMessage":Lorg/json/JSONObject;
    .end local v7    # "internalContactFingerprints":Lorg/json/JSONArray;
    .end local v8    # "internalClientFingerprints":Lorg/json/JSONArray;
    .end local v9    # "encMsg":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<[B[B>;"
    .end local v10    # "iv":Ljava/lang/String;
    .end local v11    # "messageSigBytes":[B
    .end local v12    # "encodedMsg":Ljava/lang/String;
    .end local v13    # "encodedSig":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "encryptMessage"

    const-string v2, "unable to encrypt message"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .end local v0    # "e":Ljava/lang/Throwable;
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private static final generateMessageKey()Ljava/util/Optional;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljavax/crypto/SecretKey;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 39
    .local v0, "random":Ljava/security/SecureRandom;
    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 40
    .local v1, "keyBytes":[B
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 41
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 42
    .local v2, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v4, 0x0

    .line 44
    .local v4, "aes":Ljavax/crypto/SecretKey;
    :try_start_0
    new-instance v5, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v5}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v3, v5}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    .line 47
    goto :goto_1

    .line 45
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    .line 46
    .local v3, "e":Ljava/security/GeneralSecurityException;
    :goto_0
    const-string v5, "generateMessageKey"

    const-string v6, "Unable to generate message key"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    :goto_1
    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    return-object v3
.end method

.method static synthetic lambda$encryptMessage$0()Ljava/lang/Exception;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Message key generation failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
