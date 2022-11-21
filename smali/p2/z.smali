.class public final synthetic Lp2/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp2/b0$b;


# instance fields
.field public final synthetic a:Lp2/b0;

.field public final synthetic b:Li2/m;


# direct methods
.method public synthetic constructor <init>(Lp2/b0;Li2/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2/z;->a:Lp2/b0;

    iput-object p2, p0, Lp2/z;->b:Li2/m;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lp2/z;->a:Lp2/b0;

    iget-object v1, p0, Lp2/z;->b:Li2/m;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, p1}, Lp2/b0;->m(Lp2/b0;Li2/m;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
