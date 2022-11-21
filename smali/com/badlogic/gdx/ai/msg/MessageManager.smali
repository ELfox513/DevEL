.class public final Lcom/badlogic/gdx/ai/msg/MessageManager;
.super Lcom/badlogic/gdx/ai/msg/MessageDispatcher;
.source "SourceFile"


# static fields
.field public static final g:Lcom/badlogic/gdx/ai/msg/MessageManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/ai/msg/MessageManager;

    invoke-direct {v0}, Lcom/badlogic/gdx/ai/msg/MessageManager;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/ai/msg/MessageManager;->g:Lcom/badlogic/gdx/ai/msg/MessageManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/badlogic/gdx/ai/msg/MessageManager;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/ai/msg/MessageManager;->g:Lcom/badlogic/gdx/ai/msg/MessageManager;

    return-object v0
.end method
