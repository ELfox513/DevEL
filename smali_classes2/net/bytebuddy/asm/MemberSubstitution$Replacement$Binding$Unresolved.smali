.class public final enum Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Unresolved"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;",
        ">;",
        "Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;

.field public static final enum INSTANCE:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;->INSTANCE:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;->$VALUES:[Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;
    .locals 1

    const-class v0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;->$VALUES:[Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;

    return-object v0
.end method


# virtual methods
.method public isBound()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public make(Lnet/bytebuddy/description/type/TypeList$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot resolve unresolved binding"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
