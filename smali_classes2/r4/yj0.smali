.class public final synthetic Lr4/yj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/fk0;


# static fields
.field public static final a:Lr4/fk0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/yj0;

    invoke-direct {v0}, Lr4/yj0;-><init>()V

    sput-object v0, Lr4/yj0;->a:Lr4/fk0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lr4/xt0;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1}, Lr4/xt0;->w()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lr4/xt0;->r()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    return-object v0
.end method
