.class public final Lr4/bw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ug1;


# instance fields
.field public final a:Lr4/ow0;

.field public b:Lr4/bd1;

.field public c:Lr4/u61;

.field public d:Lr4/j72;

.field public e:Lr4/gm2;

.field public f:Lr4/gl2;


# direct methods
.method public synthetic constructor <init>(Lr4/ow0;Lr4/fw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/bw0;->a:Lr4/ow0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lr4/u61;)Lr4/ug1;
    .locals 0

    iput-object p1, p0, Lr4/bw0;->c:Lr4/u61;

    return-object p0
.end method

.method public final bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/bw0;->zza()Lr4/vg1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i(Lr4/bd1;)Lr4/ug1;
    .locals 0

    iput-object p1, p0, Lr4/bw0;->b:Lr4/bd1;

    return-object p0
.end method

.method public final bridge synthetic p(Lr4/gl2;)Lr4/q61;
    .locals 0

    iput-object p1, p0, Lr4/bw0;->f:Lr4/gl2;

    return-object p0
.end method

.method public final bridge synthetic q(Lr4/j72;)Lr4/ug1;
    .locals 0

    iput-object p1, p0, Lr4/bw0;->d:Lr4/j72;

    return-object p0
.end method

.method public final bridge synthetic r(Lr4/gm2;)Lr4/q61;
    .locals 0

    iput-object p1, p0, Lr4/bw0;->e:Lr4/gm2;

    return-object p0
.end method

.method public final zza()Lr4/vg1;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lr4/bw0;->b:Lr4/bd1;

    const-class v2, Lr4/bd1;

    invoke-static {v1, v2}, Lr4/ds3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lr4/bw0;->c:Lr4/u61;

    const-class v2, Lr4/u61;

    invoke-static {v1, v2}, Lr4/ds3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lr4/bw0;->d:Lr4/j72;

    const-class v2, Lr4/j72;

    invoke-static {v1, v2}, Lr4/ds3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v1, Lr4/cw0;

    iget-object v4, v0, Lr4/bw0;->a:Lr4/ow0;

    new-instance v5, Lr4/o41;

    invoke-direct {v5}, Lr4/o41;-><init>()V

    new-instance v6, Lr4/gq2;

    invoke-direct {v6}, Lr4/gq2;-><init>()V

    new-instance v7, Lr4/a61;

    invoke-direct {v7}, Lr4/a61;-><init>()V

    new-instance v8, Lr4/ys1;

    invoke-direct {v8}, Lr4/ys1;-><init>()V

    iget-object v9, v0, Lr4/bw0;->b:Lr4/bd1;

    iget-object v10, v0, Lr4/bw0;->c:Lr4/u61;

    new-instance v11, Lr4/kq2;

    invoke-direct {v11}, Lr4/kq2;-><init>()V

    iget-object v12, v0, Lr4/bw0;->d:Lr4/j72;

    iget-object v14, v0, Lr4/bw0;->e:Lr4/gm2;

    iget-object v15, v0, Lr4/bw0;->f:Lr4/gl2;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lr4/cw0;-><init>(Lr4/ow0;Lr4/o41;Lr4/gq2;Lr4/a61;Lr4/ys1;Lr4/bd1;Lr4/u61;Lr4/kq2;Lr4/j72;Lr4/bp2;Lr4/gm2;Lr4/gl2;Lr4/fw0;)V

    return-object v1
.end method
