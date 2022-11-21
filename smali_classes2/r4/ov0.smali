.class public final Lr4/ov0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e21;


# instance fields
.field public final a:Lr4/ow0;

.field public b:Lr4/bd1;

.field public c:Lr4/u61;

.field public d:Lr4/j72;

.field public e:Lr4/c31;

.field public f:Lr4/e11;

.field public g:Lr4/mh1;

.field public h:Lr4/gm2;

.field public i:Lr4/gl2;


# direct methods
.method public synthetic constructor <init>(Lr4/ow0;Lr4/fw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ov0;->a:Lr4/ow0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/ov0;->zza()Lr4/f21;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g(Lr4/c31;)Lr4/e21;
    .locals 0

    iput-object p1, p0, Lr4/ov0;->e:Lr4/c31;

    return-object p0
.end method

.method public final bridge synthetic h(Lr4/e11;)Lr4/e21;
    .locals 0

    iput-object p1, p0, Lr4/ov0;->f:Lr4/e11;

    return-object p0
.end method

.method public final bridge synthetic k(Lr4/mh1;)Lr4/e21;
    .locals 0

    iput-object p1, p0, Lr4/ov0;->g:Lr4/mh1;

    return-object p0
.end method

.method public final bridge synthetic o(Lr4/j72;)Lr4/e21;
    .locals 0

    iput-object p1, p0, Lr4/ov0;->d:Lr4/j72;

    return-object p0
.end method

.method public final bridge synthetic p(Lr4/gl2;)Lr4/q61;
    .locals 0

    iput-object p1, p0, Lr4/ov0;->i:Lr4/gl2;

    return-object p0
.end method

.method public final bridge synthetic r(Lr4/gm2;)Lr4/q61;
    .locals 0

    iput-object p1, p0, Lr4/ov0;->h:Lr4/gm2;

    return-object p0
.end method

.method public final bridge synthetic s(Lr4/u61;)Lr4/e21;
    .locals 0

    iput-object p1, p0, Lr4/ov0;->c:Lr4/u61;

    return-object p0
.end method

.method public final bridge synthetic t(Lr4/bd1;)Lr4/e21;
    .locals 0

    iput-object p1, p0, Lr4/ov0;->b:Lr4/bd1;

    return-object p0
.end method

.method public final zza()Lr4/f21;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lr4/ov0;->b:Lr4/bd1;

    const-class v2, Lr4/bd1;

    invoke-static {v1, v2}, Lr4/ds3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lr4/ov0;->c:Lr4/u61;

    const-class v2, Lr4/u61;

    invoke-static {v1, v2}, Lr4/ds3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lr4/ov0;->d:Lr4/j72;

    const-class v2, Lr4/j72;

    invoke-static {v1, v2}, Lr4/ds3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lr4/ov0;->e:Lr4/c31;

    const-class v2, Lr4/c31;

    invoke-static {v1, v2}, Lr4/ds3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lr4/ov0;->f:Lr4/e11;

    const-class v2, Lr4/e11;

    invoke-static {v1, v2}, Lr4/ds3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lr4/ov0;->g:Lr4/mh1;

    const-class v2, Lr4/mh1;

    invoke-static {v1, v2}, Lr4/ds3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v1, Lr4/pv0;

    move-object v3, v1

    iget-object v4, v0, Lr4/ov0;->a:Lr4/ow0;

    iget-object v5, v0, Lr4/ov0;->f:Lr4/e11;

    iget-object v6, v0, Lr4/ov0;->g:Lr4/mh1;

    new-instance v2, Lr4/o41;

    move-object v7, v2

    invoke-direct {v2}, Lr4/o41;-><init>()V

    new-instance v2, Lr4/gq2;

    move-object v8, v2

    invoke-direct {v2}, Lr4/gq2;-><init>()V

    new-instance v2, Lr4/a61;

    move-object v9, v2

    invoke-direct {v2}, Lr4/a61;-><init>()V

    new-instance v2, Lr4/ys1;

    move-object v10, v2

    invoke-direct {v2}, Lr4/ys1;-><init>()V

    iget-object v11, v0, Lr4/ov0;->b:Lr4/bd1;

    iget-object v12, v0, Lr4/ov0;->c:Lr4/u61;

    new-instance v2, Lr4/kq2;

    move-object v13, v2

    invoke-direct {v2}, Lr4/kq2;-><init>()V

    iget-object v14, v0, Lr4/ov0;->d:Lr4/j72;

    iget-object v15, v0, Lr4/ov0;->e:Lr4/c31;

    iget-object v2, v0, Lr4/ov0;->h:Lr4/gm2;

    move-object/from16 v17, v2

    iget-object v2, v0, Lr4/ov0;->i:Lr4/gl2;

    move-object/from16 v18, v2

    const/16 v16, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v3 .. v19}, Lr4/pv0;-><init>(Lr4/ow0;Lr4/e11;Lr4/mh1;Lr4/o41;Lr4/gq2;Lr4/a61;Lr4/ys1;Lr4/bd1;Lr4/u61;Lr4/kq2;Lr4/j72;Lr4/c31;Lr4/bp2;Lr4/gm2;Lr4/gl2;Lr4/fw0;)V

    return-object v1
.end method
