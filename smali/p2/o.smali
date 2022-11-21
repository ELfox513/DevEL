.class public final synthetic Lp2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp2/b0$b;


# instance fields
.field public final synthetic a:Lp2/b0;

.field public final synthetic b:Li2/m;

.field public final synthetic c:Li2/h;


# direct methods
.method public synthetic constructor <init>(Lp2/b0;Li2/m;Li2/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2/o;->a:Lp2/b0;

    iput-object p2, p0, Lp2/o;->b:Li2/m;

    iput-object p3, p0, Lp2/o;->c:Li2/h;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lp2/o;->a:Lp2/b0;

    iget-object v1, p0, Lp2/o;->b:Li2/m;

    iget-object v2, p0, Lp2/o;->c:Li2/h;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, p1}, Lp2/b0;->h(Lp2/b0;Li2/m;Li2/h;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
