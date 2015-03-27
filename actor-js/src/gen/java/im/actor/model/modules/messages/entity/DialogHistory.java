package im.actor.model.modules.messages.entity;

import im.actor.model.entity.MessageState;
import im.actor.model.entity.Peer;
import im.actor.model.entity.content.AbsContent;

/**
 * Created by ex3ndr on 11.02.15.
 */
public class DialogHistory {
    private final Peer peer;
    private final int unreadCount;
    private final long sortDate;

    private final long rid;
    private final long date;
    private final int senderId;
    private final AbsContent content;
    private final MessageState status;

    public DialogHistory(Peer peer, int unreadCount, long sortDate,
                         long rid, long date, int senderId, AbsContent content, MessageState status) {
        this.peer = peer;
        this.unreadCount = unreadCount;
        this.sortDate = sortDate;
        this.rid = rid;
        this.date = date;
        this.senderId = senderId;
        this.content = content;
        this.status = status;
    }

    public Peer getPeer() {
        return peer;
    }

    public int getUnreadCount() {
        return unreadCount;
    }

    public long getSortDate() {
        return sortDate;
    }

    public long getRid() {
        return rid;
    }

    public long getDate() {
        return date;
    }

    public int getSenderId() {
        return senderId;
    }

    public AbsContent getContent() {
        return content;
    }

    public MessageState getStatus() {
        return status;
    }
}
