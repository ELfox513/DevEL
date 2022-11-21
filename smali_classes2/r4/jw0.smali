.class public final Lr4/jw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/zo1;


# instance fields
.field public final a:Lr4/ow0;

.field public b:Lr4/bd1;

.field public c:Lr4/u61;

.field public d:Lr4/gm2;

.field public e:Lr4/gl2;


# direct methods
.method public synthetic constructor <init>(Lr4/ow0;Lr4/fw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/jw0;->a:Lr4/ow0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/jw0;->zza()Lr4/ap1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m(Lr4/u61;)Lr4/zo1;
    .locals 0

    iput-object p1, p0, Lr4/jw0;->c:Lr4/u61;

    return-object p0
.end method

.method public final bridge synthetic n(Lr4/bd1;)Lr4/zo1;
    .locals 0

    iput-object p1, p0, Lr4/jw0;->b:Lr4/bd1;

    return-object p0
.end method

.method public final bridge synthetic p(Lr4/gl2;)Lr4/q61;
    .locals 0

    iput-object p1, p0, Lr4/jw0;->e:Lr4/gl2;

    return-object p0
.end method

.method public final bridge synthetic r(Lr4/gm2;)Lr4/q61;
    .locals 0

    iput-object p1, p0, Lr4/jw0;->d:Lr4/gm2;

    return-object p0
.end method

.method public final zza()Lr4/ap1;
    .locals 15

    iget-object v0, p0, Lr4/jw0;->b:Lr4/bd1;

    const-class v1, Lr4/bd1;

    invoke-static {v0, v1}, Lr4/ds3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lr4/jw0;->c:Lr4/u61;

    const-class v1, Lr4/u61;

    invoke-static {v0, v1}, Lr4/ds3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lr4/kw0;

    iget-object v3, p0, Lr4/jw0;->a:Lr4/ow0;

    new-instance v4, Lr4/o41;

    invoke-direct {v4}, Lr4/o41;-><init>()V

    new-instance v5, Lr4/gq2;

    invoke-direct {v5}, Lr4/gq2;-><init>()V

    new-instance v6, Lr4/a61;

    invoke-direct {v6}, Lr4/a61;-><init>()V

    new-instance v7, Lr4/ys1;

    invoke-direct {v7}, Lr4/ys1;-><init>()V

    iget-object v8, p0, Lr4/jw0;->b:Lr4/bd1;

    iget-object v9, p0, Lr4/jw0;->c:Lr4/u61;

    new-instance v10, Lr4/kq2;

    invoke-direct {v10}, Lr4/kq2;-><init>()V

    iget-object v12, p0, Lr4/jw0;->d:Lr4/gm2;

    iget-object v13, p0, Lr4/jw0;->e:Lr4/gl2;

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lr4/kw0;-><init>(Lr4/ow0;Lr4/o41;Lr4/gq2;Lr4/a61;Lr4/ys1;Lr4/bd1;Lr4/u61;Lr4/kq2;Lr4/bp2;Lr4/gm2;Lr4/gl2;Lr4/fw0;)V

    return-object v0
.end method
