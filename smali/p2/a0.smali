.class public final synthetic Lp2/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp2/b0$b;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Li2/m;


# direct methods
.method public synthetic constructor <init>(JLi2/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lp2/a0;->a:J

    iput-object p3, p0, Lp2/a0;->b:Li2/m;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-wide v0, p0, Lp2/a0;->a:J

    iget-object v2, p0, Lp2/a0;->b:Li2/m;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, p1}, Lp2/b0;->k(JLi2/m;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
