.class public final Lr4/yv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ut1;


# instance fields
.field public final a:Lr4/ow0;

.field public b:Landroid/content/Context;

.field public c:Lr4/o60;


# direct methods
.method public synthetic constructor <init>(Lr4/ow0;Lr4/fw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/yv0;->a:Lr4/ow0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;)Lr4/ut1;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/yv0;->b:Landroid/content/Context;

    return-object p0
.end method

.method public final bridge synthetic b(Lr4/o60;)Lr4/ut1;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/yv0;->c:Lr4/o60;

    return-object p0
.end method

.method public final zza()Lr4/vt1;
    .locals 5

    iget-object v0, p0, Lr4/yv0;->b:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lr4/ds3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lr4/yv0;->c:Lr4/o60;

    const-class v1, Lr4/o60;

    invoke-static {v0, v1}, Lr4/ds3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lr4/zv0;

    iget-object v1, p0, Lr4/yv0;->a:Lr4/ow0;

    iget-object v2, p0, Lr4/yv0;->b:Landroid/content/Context;

    iget-object v3, p0, Lr4/yv0;->c:Lr4/o60;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lr4/zv0;-><init>(Lr4/ow0;Landroid/content/Context;Lr4/o60;Lr4/fw0;)V

    return-object v0
.end method
