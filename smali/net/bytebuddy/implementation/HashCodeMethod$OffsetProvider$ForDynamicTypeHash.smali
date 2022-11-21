.class public final enum Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForDynamicTypeHash;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForDynamicTypeHash"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForDynamicTypeHash;",
        ">;",
        "Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForDynamicTypeHash;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForDynamicTypeHash;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForDynamicTypeHash;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForDynamicTypeHash;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForDynamicTypeHash;->INSTANCE:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForDynamicTypeHash;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForDynamicTypeHash;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForDynamicTypeHash;->$VALUES:[Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForDynamicTypeHash;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForDynamicTypeHash;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForDynamicTypeHash;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForDynamicTypeHash;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForDynamicTypeHash;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForDynamicTypeHash;->$VALUES:[Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForDynamicTypeHash;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForDynamicTypeHash;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForDynamicTypeHash;

    return-object v0
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 4

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v1, 0x3

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lnet/bytebuddy/implementation/HashCodeMethod;->b()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v2

    invoke-interface {v2, p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;->virtual(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {}, Lnet/bytebuddy/implementation/HashCodeMethod;->a()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p1

    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object p1

    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription;->CLASS:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p1, v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;->virtual(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v0
.end method
