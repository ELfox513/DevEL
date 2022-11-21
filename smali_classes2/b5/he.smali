.class public final Lb5/he;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5/z6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb5/z6<",
        "Lb5/ie;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lb5/he;


# instance fields
.field public final a:Lb5/z6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/z6<",
            "Lb5/ie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb5/he;

    invoke-direct {v0}, Lb5/he;-><init>()V

    sput-object v0, Lb5/he;->b:Lb5/he;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lb5/je;

    invoke-direct {v0}, Lb5/je;-><init>()V

    invoke-static {v0}, Lb5/d7;->b(Ljava/lang/Object;)Lb5/z6;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lb5/d7;->a(Lb5/z6;)Lb5/z6;

    move-result-object v0

    iput-object v0, p0, Lb5/he;->a:Lb5/z6;

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lb5/he;->b:Lb5/he;

    invoke-virtual {v0}, Lb5/he;->a()Lb5/ie;

    move-result-object v0

    invoke-interface {v0}, Lb5/ie;->zza()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Lb5/ie;
    .locals 1

    iget-object v0, p0, Lb5/he;->a:Lb5/z6;

    invoke-interface {v0}, Lb5/z6;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/ie;

    return-object v0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lb5/he;->a()Lb5/ie;

    move-result-object v0

    return-object v0
.end method
