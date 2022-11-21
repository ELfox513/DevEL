.class public final synthetic Lr4/u71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/xc1;


# static fields
.field public static final a:Lr4/xc1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/u71;

    invoke-direct {v0}, Lr4/u71;-><init>()V

    sput-object v0, Lr4/u71;->a:Lr4/xc1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lr4/z71;

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lr4/dq2;->d(ILjava/lang/String;Lr4/lt;)Lr4/lt;

    move-result-object v0

    invoke-interface {p1, v0}, Lr4/z71;->o(Lr4/lt;)V

    return-void
.end method
