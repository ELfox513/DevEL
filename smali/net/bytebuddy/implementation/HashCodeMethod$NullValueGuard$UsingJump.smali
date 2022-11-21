.class public Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsingJump"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump$AfterInstruction;,
        Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump$BeforeInstruction;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final EMPTY:[Ljava/lang/Object;

.field private static final INTEGER:[Ljava/lang/Object;


# instance fields
.field private final instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

.field private final label:Lnet/bytebuddy/jar/asm/Label;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;->EMPTY:[Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object v2, v1, v0

    sput-object v1, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;->INTEGER:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    new-instance p1, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;->label:Lnet/bytebuddy/jar/asm/Label;

    return-void
.end method

.method public static synthetic a(Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;)Lnet/bytebuddy/description/method/MethodDescription;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    return-object p0
.end method

.method public static synthetic b(Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;)Lnet/bytebuddy/jar/asm/Label;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;->label:Lnet/bytebuddy/jar/asm/Label;

    return-object p0
.end method

.method public static synthetic c()[Ljava/lang/Object;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;->EMPTY:[Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic d()[Ljava/lang/Object;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;->INTEGER:[Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public after()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    new-instance v0, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump$AfterInstruction;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump$AfterInstruction;-><init>(Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;)V

    return-object v0
.end method

.method public before()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    new-instance v0, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump$BeforeInstruction;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump$BeforeInstruction;-><init>(Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    check-cast p1, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;

    iget-object v3, p1, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;->label:Lnet/bytebuddy/jar/asm/Label;

    iget-object p1, p1, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;->label:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getRequiredVariablePadding()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;->label:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
