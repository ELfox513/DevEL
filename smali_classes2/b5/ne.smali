.class public final Lb5/ne;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5/z6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb5/z6<",
        "Lb5/oe;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lb5/ne;


# instance fields
.field public final a:Lb5/z6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/z6<",
            "Lb5/oe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb5/ne;

    invoke-direct {v0}, Lb5/ne;-><init>()V

    sput-object v0, Lb5/ne;->b:Lb5/ne;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lb5/pe;

    invoke-direct {v0}, Lb5/pe;-><init>()V

    invoke-static {v0}, Lb5/d7;->b(Ljava/lang/Object;)Lb5/z6;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lb5/d7;->a(Lb5/z6;)Lb5/z6;

    move-result-object v0

    iput-object v0, p0, Lb5/ne;->a:Lb5/z6;

    return-void
.end method

.method public static a()D
    .locals 2

    sget-object v0, Lb5/ne;->b:Lb5/ne;

    invoke-virtual {v0}, Lb5/ne;->d()Lb5/oe;

    move-result-object v0

    invoke-interface {v0}, Lb5/oe;->zza()D

    move-result-wide v0

    return-wide v0
.end method

.method public static b()J
    .locals 2

    sget-object v0, Lb5/ne;->b:Lb5/ne;

    invoke-virtual {v0}, Lb5/ne;->d()Lb5/oe;

    move-result-object v0

    invoke-interface {v0}, Lb5/oe;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public static c()J
    .locals 2

    sget-object v0, Lb5/ne;->b:Lb5/ne;

    invoke-virtual {v0}, Lb5/ne;->d()Lb5/oe;

    move-result-object v0

    invoke-interface {v0}, Lb5/oe;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lb5/ne;->b:Lb5/ne;

    invoke-virtual {v0}, Lb5/ne;->d()Lb5/oe;

    move-result-object v0

    invoke-interface {v0}, Lb5/oe;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()Z
    .locals 1

    sget-object v0, Lb5/ne;->b:Lb5/ne;

    invoke-virtual {v0}, Lb5/ne;->d()Lb5/oe;

    move-result-object v0

    invoke-interface {v0}, Lb5/oe;->c()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final d()Lb5/oe;
    .locals 1

    iget-object v0, p0, Lb5/ne;->a:Lb5/z6;

    invoke-interface {v0}, Lb5/z6;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/oe;

    return-object v0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lb5/ne;->d()Lb5/oe;

    move-result-object v0

    return-object v0
.end method
