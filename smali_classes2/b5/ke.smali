.class public final Lb5/ke;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5/z6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb5/z6<",
        "Lb5/le;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lb5/ke;


# instance fields
.field public final a:Lb5/z6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/z6<",
            "Lb5/le;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb5/ke;

    invoke-direct {v0}, Lb5/ke;-><init>()V

    sput-object v0, Lb5/ke;->b:Lb5/ke;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lb5/me;

    invoke-direct {v0}, Lb5/me;-><init>()V

    invoke-static {v0}, Lb5/d7;->b(Ljava/lang/Object;)Lb5/z6;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lb5/d7;->a(Lb5/z6;)Lb5/z6;

    move-result-object v0

    iput-object v0, p0, Lb5/ke;->a:Lb5/z6;

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lb5/ke;->b:Lb5/ke;

    invoke-virtual {v0}, Lb5/ke;->a()Lb5/le;

    move-result-object v0

    invoke-interface {v0}, Lb5/le;->zza()Z

    const/4 v0, 0x1

    return v0
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Lb5/ke;->b:Lb5/ke;

    invoke-virtual {v0}, Lb5/ke;->a()Lb5/le;

    move-result-object v0

    invoke-interface {v0}, Lb5/le;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Lb5/le;
    .locals 1

    iget-object v0, p0, Lb5/ke;->a:Lb5/z6;

    invoke-interface {v0}, Lb5/z6;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/le;

    return-object v0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lb5/ke;->a()Lb5/le;

    move-result-object v0

    return-object v0
.end method
