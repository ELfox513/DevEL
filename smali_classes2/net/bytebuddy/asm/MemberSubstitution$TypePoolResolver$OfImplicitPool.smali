.class public final enum Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OfImplicitPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;",
        ">;",
        "Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;

.field public static final enum INSTANCE:Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;->INSTANCE:Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;->$VALUES:[Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;
    .locals 1

    const-class v0, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;->$VALUES:[Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;

    return-object v0
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/pool/TypePool;
    .locals 0

    return-object p3
.end method
