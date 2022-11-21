.class public final synthetic Lr4/xa3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ij3;


# static fields
.field public static final a:Lr4/ij3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/xa3;

    invoke-direct {v0}, Lr4/xa3;-><init>()V

    sput-object v0, Lr4/xa3;->a:Lr4/ij3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lr4/e33;

    sget-object v0, Lr4/nk3;->a:Ljava/util/regex/Pattern;

    iget-object p1, p1, Lr4/e33;->a:Ljava/lang/String;

    const-string v0, "OMX.google"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
