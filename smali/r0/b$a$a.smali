.class public Lr0/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr0/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Lr0/a;Lq0/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq0/c$a;

.field public final synthetic b:[Lr0/a;


# direct methods
.method public constructor <init>(Lq0/c$a;[Lr0/a;)V
    .locals 0

    iput-object p1, p0, Lr0/b$a$a;->a:Lq0/c$a;

    iput-object p2, p0, Lr0/b$a$a;->b:[Lr0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    iget-object v0, p0, Lr0/b$a$a;->a:Lq0/c$a;

    iget-object v1, p0, Lr0/b$a$a;->b:[Lr0/a;

    invoke-static {v1, p1}, Lr0/b$a;->d([Lr0/a;Landroid/database/sqlite/SQLiteDatabase;)Lr0/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lq0/c$a;->c(Lq0/b;)V

    return-void
.end method
