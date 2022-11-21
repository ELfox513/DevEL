.class public final Lr4/u02;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/ip;

.field public final b:Landroid/content/Context;

.field public final c:Lr4/b02;

.field public final d:Lr4/im0;

.field public final e:Ljava/lang/String;

.field public final f:Lr4/xt2;

.field public final g:Lb3/y1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/im0;Lr4/ip;Lr4/b02;Ljava/lang/String;Lr4/xt2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/u02;->b:Landroid/content/Context;

    iput-object p2, p0, Lr4/u02;->d:Lr4/im0;

    iput-object p3, p0, Lr4/u02;->a:Lr4/ip;

    iput-object p4, p0, Lr4/u02;->c:Lr4/b02;

    iput-object p5, p0, Lr4/u02;->e:Ljava/lang/String;

    iput-object p6, p0, Lr4/u02;->f:Lr4/xt2;

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object p1

    invoke-virtual {p1}, Lr4/nl0;->p()Lb3/y1;

    move-result-object p1

    iput-object p1, p0, Lr4/u02;->g:Lb3/y1;

    return-void
.end method

.method public static final c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList<",
            "Lr4/sr;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr4/sr;

    invoke-virtual {v6}, Lr4/sr;->Y()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    invoke-virtual {v6}, Lr4/sr;->E()J

    move-result-wide v7

    cmp-long v9, v7, v4

    if-lez v9, :cond_0

    invoke-virtual {v6}, Lr4/sr;->E()J

    move-result-wide v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    cmp-long p1, v4, v1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v0, 0x0

    const-string v1, "offline_signal_statistics"

    const-string v2, "statistic_name = \'last_successful_request_time\'"

    invoke-virtual {p0, v1, p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lr4/u02;->c:Lr4/b02;

    new-instance v1, Lr4/q02;

    invoke-direct {v1, p0, p1}, Lr4/q02;-><init>(Lr4/u02;Z)V

    invoke-virtual {v0, v1}, Lr4/b02;->a(Lr4/ps2;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error in offline signals database startup: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic b(ZLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eqz p1, :cond_0

    iget-object v1, v0, Lr4/u02;->b:Landroid/content/Context;

    const-string v3, "OfflineUpload.db"

    invoke-virtual {v1, v3}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    :goto_0
    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_0
    sget-object v3, Lr4/rz;->i6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v4

    invoke-virtual {v4, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_5

    const-string v3, "oa_upload"

    invoke-static {v3}, Lr4/wt2;->a(Ljava/lang/String;)Lr4/wt2;

    move-result-object v3

    invoke-static {v1, v6}, Lr4/p02;->b(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "oa_failed_reqs"

    invoke-virtual {v3, v8, v7}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-static {v1, v5}, Lr4/p02;->b(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "oa_total_reqs"

    invoke-virtual {v3, v8, v7}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v7

    invoke-interface {v7}, Lc4/f;->a()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "oa_upload_time"

    invoke-virtual {v3, v8, v7}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-static {v1, v4}, Lr4/p02;->c(Landroid/database/sqlite/SQLiteDatabase;I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "oa_last_successful_time"

    invoke-virtual {v3, v8, v7}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    iget-object v7, v0, Lr4/u02;->g:Lb3/y1;

    invoke-interface {v7}, Lb3/y1;->y()Z

    move-result v7

    const-string v8, ""

    if-eqz v7, :cond_1

    move-object v7, v8

    goto :goto_1

    :cond_1
    iget-object v7, v0, Lr4/u02;->e:Ljava/lang/String;

    :goto_1
    const-string v9, "oa_session_id"

    invoke-virtual {v3, v9, v7}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    iget-object v7, v0, Lr4/u02;->f:Lr4/xt2;

    invoke-interface {v7, v3}, Lr4/xt2;->a(Lr4/wt2;)V

    invoke-static/range {p2 .. p2}, Lr4/p02;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1, v3}, Lr4/u02;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v7, :cond_7

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lr4/sr;

    const-string v12, "oa_signals"

    invoke-static {v12}, Lr4/wt2;->a(Ljava/lang/String;)Lr4/wt2;

    move-result-object v12

    iget-object v13, v0, Lr4/u02;->g:Lb3/y1;

    invoke-interface {v13}, Lb3/y1;->y()Z

    move-result v13

    if-eqz v13, :cond_2

    move-object v13, v8

    goto :goto_3

    :cond_2
    iget-object v13, v0, Lr4/u02;->e:Ljava/lang/String;

    :goto_3
    invoke-virtual {v12, v9, v13}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-virtual {v11}, Lr4/sr;->L()Lr4/nr;

    move-result-object v13

    invoke-virtual {v13}, Lr4/nr;->C()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v13}, Lr4/nr;->K()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :cond_3
    const-string v14, "-1"

    :goto_4
    invoke-virtual {v11}, Lr4/sr;->K()Ljava/util/List;

    move-result-object v15

    sget-object v2, Lr4/t02;->a:Lr4/p03;

    invoke-static {v15, v2}, Lr4/h43;->b(Ljava/util/List;Lr4/p03;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lr4/sr;->E()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    const-string v5, "oa_sig_ts"

    invoke-virtual {v12, v5, v15}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-virtual {v11}, Lr4/sr;->Y()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v15, "oa_sig_status"

    invoke-virtual {v12, v15, v5}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-virtual {v11}, Lr4/sr;->I()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v15, "oa_sig_resp_lat"

    invoke-virtual {v12, v15, v5}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-virtual {v11}, Lr4/sr;->J()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v15, "oa_sig_render_lat"

    invoke-virtual {v12, v15, v5}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    const-string v5, "oa_sig_formats"

    invoke-virtual {v12, v5, v2}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    const-string v2, "oa_sig_nw_type"

    invoke-virtual {v12, v2, v14}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-virtual {v11}, Lr4/sr;->Z()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "oa_sig_wifi"

    invoke-virtual {v12, v5, v2}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-virtual {v11}, Lr4/sr;->a0()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "oa_sig_airplane"

    invoke-virtual {v12, v5, v2}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-virtual {v11}, Lr4/sr;->b0()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "oa_sig_data"

    invoke-virtual {v12, v5, v2}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-virtual {v11}, Lr4/sr;->M()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "oa_sig_nw_resp"

    invoke-virtual {v12, v5, v2}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-virtual {v11}, Lr4/sr;->c0()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "oa_sig_offline"

    invoke-virtual {v12, v5, v2}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-virtual {v11}, Lr4/sr;->N()Lr4/wr;

    move-result-object v2

    invoke-virtual {v2}, Lr4/wr;->zza()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "oa_sig_nw_state"

    invoke-virtual {v12, v5, v2}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-virtual {v13}, Lr4/nr;->D()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v13}, Lr4/nr;->C()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v13}, Lr4/nr;->K()I

    move-result v2

    if-ne v2, v4, :cond_4

    invoke-virtual {v13}, Lr4/nr;->L()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "oa_sig_cell_type"

    invoke-virtual {v12, v5, v2}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    :cond_4
    iget-object v2, v0, Lr4/u02;->f:Lr4/xt2;

    invoke-interface {v2, v12}, Lr4/xt2;->a(Lr4/wt2;)V

    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_5
    invoke-static/range {p2 .. p2}, Lr4/p02;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {}, Lr4/xr;->C()Lr4/tr;

    move-result-object v3

    iget-object v5, v0, Lr4/u02;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lr4/tr;->B(Ljava/lang/String;)Lr4/tr;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lr4/tr;->C(Ljava/lang/String;)Lr4/tr;

    invoke-static {v1, v6}, Lr4/p02;->b(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v5

    invoke-virtual {v3, v5}, Lr4/tr;->x(I)Lr4/tr;

    invoke-virtual {v3, v2}, Lr4/tr;->v(Ljava/lang/Iterable;)Lr4/tr;

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lr4/p02;->b(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v7

    invoke-virtual {v3, v7}, Lr4/tr;->z(I)Lr4/tr;

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v5

    invoke-interface {v5}, Lc4/f;->a()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lr4/tr;->A(J)Lr4/tr;

    invoke-static {v1, v4}, Lr4/p02;->c(Landroid/database/sqlite/SQLiteDatabase;I)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lr4/tr;->D(J)Lr4/tr;

    invoke-virtual {v3}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object v3

    check-cast v3, Lr4/xr;

    invoke-static {v1, v2}, Lr4/u02;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V

    iget-object v2, v0, Lr4/u02;->a:Lr4/ip;

    new-instance v5, Lr4/r02;

    invoke-direct {v5, v3}, Lr4/r02;-><init>(Lr4/xr;)V

    invoke-virtual {v2, v5}, Lr4/ip;->b(Lr4/hp;)V

    invoke-static {}, Lr4/js;->C()Lr4/is;

    move-result-object v2

    iget-object v3, v0, Lr4/u02;->d:Lr4/im0;

    iget v3, v3, Lr4/im0;->b:I

    invoke-virtual {v2, v3}, Lr4/is;->v(I)Lr4/is;

    iget-object v3, v0, Lr4/u02;->d:Lr4/im0;

    iget v3, v3, Lr4/im0;->d:I

    invoke-virtual {v2, v3}, Lr4/is;->x(I)Lr4/is;

    iget-object v3, v0, Lr4/u02;->d:Lr4/im0;

    iget-boolean v3, v3, Lr4/im0;->k:Z

    const/4 v5, 0x1

    if-eq v5, v3, :cond_6

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v2, v4}, Lr4/is;->z(I)Lr4/is;

    invoke-virtual {v2}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object v2

    check-cast v2, Lr4/js;

    iget-object v3, v0, Lr4/u02;->a:Lr4/ip;

    new-instance v4, Lr4/s02;

    invoke-direct {v4, v2}, Lr4/s02;-><init>(Lr4/js;)V

    invoke-virtual {v3, v4}, Lr4/ip;->b(Lr4/hp;)V

    iget-object v2, v0, Lr4/u02;->a:Lr4/ip;

    const/16 v3, 0x2714

    invoke-virtual {v2, v3}, Lr4/ip;->c(I)V

    :cond_7
    const-string v2, "offline_signal_contents"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const-string v8, "failed_requests"

    aput-object v8, v7, v6

    const-string v8, "offline_signal_statistics"

    const-string v9, "statistic_name = ?"

    invoke-virtual {v1, v8, v2, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "total_requests"

    aput-object v4, v3, v6

    invoke-virtual {v1, v8, v2, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :goto_6
    return-object v1
.end method
