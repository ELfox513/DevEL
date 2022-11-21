.class public final Lr4/wv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/mt1;


# instance fields
.field public final a:Lr4/ow0;

.field public final b:Lr4/zv0;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lr4/ow0;Lr4/zv0;Lr4/fw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/wv0;->a:Lr4/ow0;

    iput-object p2, p0, Lr4/wv0;->b:Lr4/zv0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(J)Lr4/mt1;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lr4/wv0;->c:Ljava/lang/Long;

    return-object p0
.end method

.method public final bridge synthetic u(Ljava/lang/String;)Lr4/mt1;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/wv0;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final zza()Lr4/nt1;
    .locals 8

    iget-object v0, p0, Lr4/wv0;->c:Ljava/lang/Long;

    const-class v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lr4/ds3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lr4/wv0;->d:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lr4/ds3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lr4/xv0;

    iget-object v3, p0, Lr4/wv0;->a:Lr4/ow0;

    iget-object v4, p0, Lr4/wv0;->b:Lr4/zv0;

    iget-object v5, p0, Lr4/wv0;->c:Ljava/lang/Long;

    iget-object v6, p0, Lr4/wv0;->d:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lr4/xv0;-><init>(Lr4/ow0;Lr4/zv0;Ljava/lang/Long;Ljava/lang/String;Lr4/fw0;)V

    return-object v0
.end method
