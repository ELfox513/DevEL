.class public final Lr4/dw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/rm2;


# instance fields
.field public final a:Lr4/ow0;

.field public b:Landroid/content/Context;

.field public c:Ljava/lang/String;

.field public d:Lr4/yt;


# direct methods
.method public synthetic constructor <init>(Lr4/ow0;Lr4/fw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/dw0;->a:Lr4/ow0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic A(Ljava/lang/String;)Lr4/rm2;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/dw0;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic a(Lr4/yt;)Lr4/rm2;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/dw0;->d:Lr4/yt;

    return-object p0
.end method

.method public final bridge synthetic b(Landroid/content/Context;)Lr4/rm2;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/dw0;->b:Landroid/content/Context;

    return-object p0
.end method

.method public final zza()Lr4/sm2;
    .locals 8

    iget-object v0, p0, Lr4/dw0;->b:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lr4/ds3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lr4/dw0;->c:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lr4/ds3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lr4/dw0;->d:Lr4/yt;

    const-class v1, Lr4/yt;

    invoke-static {v0, v1}, Lr4/ds3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lr4/ew0;

    iget-object v3, p0, Lr4/dw0;->a:Lr4/ow0;

    iget-object v4, p0, Lr4/dw0;->b:Landroid/content/Context;

    iget-object v5, p0, Lr4/dw0;->c:Ljava/lang/String;

    iget-object v6, p0, Lr4/dw0;->d:Lr4/yt;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lr4/ew0;-><init>(Lr4/ow0;Landroid/content/Context;Ljava/lang/String;Lr4/yt;Lr4/fw0;)V

    return-object v0
.end method
