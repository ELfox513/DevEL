.class public final Lb5/jf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5/z6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb5/z6<",
        "Lb5/kf;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lb5/jf;


# instance fields
.field public final a:Lb5/z6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/z6<",
            "Lb5/kf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb5/jf;

    invoke-direct {v0}, Lb5/jf;-><init>()V

    sput-object v0, Lb5/jf;->b:Lb5/jf;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lb5/lf;

    invoke-direct {v0}, Lb5/lf;-><init>()V

    invoke-static {v0}, Lb5/d7;->b(Ljava/lang/Object;)Lb5/z6;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lb5/d7;->a(Lb5/z6;)Lb5/z6;

    move-result-object v0

    iput-object v0, p0, Lb5/jf;->a:Lb5/z6;

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lb5/jf;->b:Lb5/jf;

    invoke-virtual {v0}, Lb5/jf;->a()Lb5/kf;

    move-result-object v0

    invoke-interface {v0}, Lb5/kf;->zza()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Lb5/kf;
    .locals 1

    iget-object v0, p0, Lb5/jf;->a:Lb5/z6;

    invoke-interface {v0}, Lb5/z6;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/kf;

    return-object v0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lb5/jf;->a()Lb5/kf;

    move-result-object v0

    return-object v0
.end method
