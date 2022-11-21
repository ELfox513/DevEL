.class public enum Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "Validator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;",
        ">;",
        "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

.field public static final enum EXCEPTION:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

.field public static final enum FIELD:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

.field public static final enum INTERFACE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

.field public static final enum METHOD_PARAMETER:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

.field public static final enum METHOD_RETURN:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

.field public static final enum RECEIVER:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

.field public static final enum SUPER_CLASS:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

.field public static final enum TYPE_VARIABLE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;


# instance fields
.field private final acceptsArray:Z

.field private final acceptsPrimitive:Z

.field private final acceptsVariable:Z

.field private final acceptsVoid:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    new-instance v7, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$1;

    const-string v1, "SUPER_CLASS"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$1;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v7, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->SUPER_CLASS:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$2;

    const-string v9, "INTERFACE"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$2;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->INTERFACE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    const-string v16, "TYPE_VARIABLE"

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->TYPE_VARIABLE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    const-string v9, "FIELD"

    const/4 v10, 0x3

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v2, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->FIELD:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    new-instance v3, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    const-string v16, "METHOD_RETURN"

    const/16 v17, 0x4

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v21, 0x1

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->METHOD_RETURN:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    new-instance v4, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    const-string v9, "METHOD_PARAMETER"

    const/4 v10, 0x5

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v4, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->METHOD_PARAMETER:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    new-instance v5, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$3;

    const-string v16, "EXCEPTION"

    const/16 v17, 0x6

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object v15, v5

    invoke-direct/range {v15 .. v21}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$3;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v5, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->EXCEPTION:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    new-instance v6, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    const-string v9, "RECEIVER"

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v6, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->RECEIVER:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    const/16 v8, 0x8

    new-array v8, v8, [Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/4 v7, 0x1

    aput-object v0, v8, v7

    const/4 v0, 0x2

    aput-object v1, v8, v0

    const/4 v0, 0x3

    aput-object v2, v8, v0

    const/4 v0, 0x4

    aput-object v3, v8, v0

    const/4 v0, 0x5

    aput-object v4, v8, v0

    const/4 v0, 0x6

    aput-object v5, v8, v0

    const/4 v0, 0x7

    aput-object v6, v8, v0

    sput-object v8, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->$VALUES:[Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->acceptsArray:Z

    iput-boolean p4, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->acceptsPrimitive:Z

    iput-boolean p5, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->acceptsVariable:Z

    iput-boolean p6, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->acceptsVoid:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IZZZZLnet/bytebuddy/description/type/TypeDescription$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;-><init>(Ljava/lang/String;IZZZZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;
    .locals 1

    const-class v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->$VALUES:[Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    invoke-virtual {v0}, [Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    return-object v0
.end method


# virtual methods
.method public onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Boolean;
    .locals 0

    iget-boolean p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->acceptsArray:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->acceptsArray:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->acceptsPrimitive:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->acceptsVoid:Z

    if-nez v0, :cond_3

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Boolean;
    .locals 0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Boolean;
    .locals 0

    iget-boolean p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->acceptsVariable:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Boolean;
    .locals 0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
