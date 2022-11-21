.class public abstract enum Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$OffsetMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$OffsetMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "ForInstrumentedMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$OffsetMapping;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;

.field public static final enum CONSTRUCTOR:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;

.field public static final enum EXECUTABLE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;

.field public static final enum METHOD:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod$1;

    const-string v1, "METHOD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;->METHOD:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;

    new-instance v1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod$2;

    const-string v3, "CONSTRUCTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;->CONSTRUCTOR:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;

    new-instance v3, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod$3;

    const-string v5, "EXECUTABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;->EXECUTABLE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;

    const/4 v5, 0x3

    new-array v5, v5, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;->$VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/asm/Advice$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;
    .locals 1

    const-class v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;->$VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;

    return-object v0
.end method


# virtual methods
.method public abstract isRepresentable(Lnet/bytebuddy/description/method/MethodDescription;)Z
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler;Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;
    .locals 0

    invoke-virtual {p0, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;->isRepresentable(Lnet/bytebuddy/description/method/MethodDescription;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;->asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-static {p1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForStackManipulation;->of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot represent "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " as given method constant"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
